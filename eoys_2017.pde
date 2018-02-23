//--------------- MAT 200C FINAL PROJECT
//---------LU LIU------------------------
//------Special Thanks: Rodger Luo

/* Libriaries List*/
import toxi.math.conversion.*;
import toxi.geom.*;
import toxi.math.*;
import toxi.geom.mesh2d.*;
import toxi.util.datatypes.*;
import toxi.util.events.*;
import toxi.geom.mesh.subdiv.*;
import toxi.geom.mesh.*;
import toxi.math.waves.*;
import toxi.util.*;
import toxi.math.noise.*;
import toxi.processing.*;

import processing.video.*;

import gab.opencv.*;
import java.awt.*;
import wblut.processing.*;
import wblut.geom.*;
import java.util.List;


//----------------------------------------------------
/* Declearations  */

//---------------- general
Capture video;
OpenCV opencv;

//---------------- voronoi relatives
List<WB_Point> points;
List<WB_VoronoiCell2D> voronoiXY;

WB_GeometryFactory gf=WB_GeometryFactory.instance();

ArrayList<VoroShape> voroShapes = new ArrayList<VoroShape>();
final int voroPoints = 1200;
//final int voroPoints = 1500;


//---------------- the other part
PImage testImage;
float scaleFactor = 1.2;
float rotateFactor = 0;

float angle = 0;
float presentFrame=0;

int image_index;

int timer=0;




void setup() {

  size(displayWidth, displayHeight, P3D);


  String[] cameras = Capture.list();
  // video = new Capture(this, displayWidth, displayHeight, "HD Pro Webcam C920");
  video = new Capture(this, displayWidth, displayHeight);

  // println(cameras);

  opencv = new OpenCV(this, displayWidth, displayHeight);


  //----------------- get real-time images from webcam
  video.start();
  opencv.loadImage(video);




  //----------------- Construct voronoi points list  

  points=new ArrayList<WB_Point>();

  // add points to collection
  for (int i=0; i<voroPoints; i++) {
    points.add(new WB_Point(random(0, width), random(0, height), 0));
  }
  voronoiXY= WB_Voronoi.getVoronoi2D(points);


  for (WB_VoronoiCell2D vor : voronoiXY) {    
    WB_Polygon voro_shape = vor.getPolygon();
    PShape tempShape;
    tempShape = createShape();
    tempShape.beginShape();
    //tempShape.tint(random(0,255),random(0,255),random(0,255),50);
    tempShape.strokeWeight(random(0, 3));

    //-----------------Determine whether using texture  !!!!!!
    //if (colorMode_Video) {
    //  tempShape.texture(video);
    //}

    for (int i=0; i<voro_shape.getNumberOfPoints (); i++) {
      WB_Point voro_points = voro_shape.getPoint(i);
      float temp_x = voro_points.xf();
      float temp_y = voro_points.yf();
      float temp_z = voro_points.zf();

      //------- make sure there is no points outside of canvas
      if (temp_x < 0) temp_x = 0;
      else if (temp_x > width) temp_x = width;
      if (temp_y < 0) temp_y = 0;
      else if (temp_y > height) temp_y = height;

      tempShape.vertex(temp_x, temp_y, temp_z, temp_x, temp_y);
    }
    tempShape.endShape();

    PVector tempVector = new PVector(vor.getCentroid().xf(), vor.getCentroid().yf(), vor.getCentroid().zf());
    voroShapes.add(new VoroShape(tempShape, tempVector));
  }

  //Reset the centroid of which is out of canvas
  for (int i=0; i<voroShapes.size (); i++) {
    if (voroShapes.get(i).centroid.x < 0 || voroShapes.get(i).centroid.x > width || 
      voroShapes.get(i).centroid.y < 0 || voroShapes.get(i).centroid.x > height) {
      float new_center_x = 0;
      float new_center_y = 0; 
      for (int n=0; n<voroShapes.get (i).shape.getVertexCount(); n++) {
        new_center_x += voroShapes.get(i).shape.getVertex(n).x;
        new_center_y += voroShapes.get(i).shape.getVertex(n).y;
      }
      voroShapes.get(i).centroid.x = new_center_x/voroShapes.get(i).shape.getVertexCount();
      voroShapes.get(i).centroid.y = new_center_y/voroShapes.get(i).shape.getVertexCount();
    }
  }

  //  scaleFactors = new float[voroShapes.size()];
  //  rotateFactors = new float[voroShapes.size()];


  //-------------- colors from paintings

  input_image1 = loadImage(IMAGE_NAME1);
  input_image2 = loadImage(IMAGE_NAME2);
  input_image3 = loadImage(IMAGE_NAME3);
  input_image4 = loadImage(IMAGE_NAME4);
  input_image5 = loadImage(IMAGE_NAME5);
  input_image6 = loadImage(IMAGE_NAME6);

  chosenColor1 = new color[COLOR_NUMBER];
  chosenColor2 = new color[COLOR_NUMBER];
  chosenColor3 = new color[COLOR_NUMBER];
  chosenColor4 = new color[COLOR_NUMBER];
  chosenColor5 = new color[COLOR_NUMBER];
  chosenColor6 = new color[COLOR_NUMBER];
  //
  pick_color1(input_image1);
  pick_color2(input_image2);
  pick_color3(input_image3);
  pick_color4(input_image4);
  pick_color5(input_image5);
  pick_color6(input_image6);
}

void draw() {
  //background(122);
  //  opencv.loadImage(video);
  //  opencv.calculateOpticalFlow();
  //  PVector aveFlow = opencv.getAverageFlow();
  //  angle = PVector.angleBetween(aveFlow, new PVector(10, 10));
  //  println(angle);
  presentFrame++;


  for (int i=0; i<voroShapes.size (); i++) {
    pushMatrix(); 
//    translate(video.width, 0);
//    scale(-1, 1); // You had it right!
//    translate (0,video.height);
//  scale(1,-1);
 


    color fillColor = video.get((int)voroShapes.get(i).centroid.x, (int)voroShapes.get(i).centroid.y);
    fillColor = color(fillColor, 100);
    voroShapes.get(i).shape.setStroke(color(0, 0));

    //--------------- colorMatch function


    if (colorMode1) {
      color FFColor= colorMatch1(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }
    if (colorMode2) {
      color FFColor= colorMatch2(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }

    if (colorMode3) {
      color FFColor= colorMatch3(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }

    if (colorMode4) {
      color FFColor= colorMatch4(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }

    if (colorMode5) {
      color FFColor= colorMatch5(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }

    if (colorMode6) {
      color FFColor= colorMatch6(fillColor);
      voroShapes.get(i).shape.setFill(FFColor);
    }

    // voroShapes.get(i).shape.setFill(FFColor);

    if (colorMode_Video) {   
      voroShapes.get(i).shape.setFill(fillColor);
    }

    //presentation();
    //print(colorMode_Video);
    translate(voroShapes.get(i).centroid.x, voroShapes.get(i).centroid.y, voroShapes.get(i).centroid.z);
    scale(scaleFactor);
    //rotateZ(sin(rotateFactor));
    rotateFactor += 0.000005;
    rotateZ(rotateFactor);
    //rotateZ(angle);
    //println(angle);
    translate(-voroShapes.get(i).centroid.x, -voroShapes.get(i).centroid.y, -voroShapes.get(i).centroid.z);
    shape(voroShapes.get(i).shape);
    popMatrix();
  }


  //if (timer%800 < 10) {
  //  saveImage();
    
  //  image_index++;
  //}
  
  //timer++;

  //int flowScale = 50;
  //stroke(255);
  //strokeWeight(2);
  //line(video.width/2, video.height/2, video.width/2 + aveFlow.x*flowScale, video.height/2 + aveFlow.y*flowScale);
}

void captureEvent(Capture c) {
  c.read();
}
