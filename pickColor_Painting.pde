PImage input_image1;
PImage input_image2;
PImage input_image3;
PImage input_image4;
PImage input_image5;
PImage input_image6;

//PImage[] input_images;

//int imageNumber;

String IMAGE_NAME1 = "factory01.jpg";
String IMAGE_NAME2 = "GameofChess02.jpg";
String IMAGE_NAME3 = "Deux_Nus03.jpg";
String IMAGE_NAME4 = "Bornemisza04.jpg";
String IMAGE_NAME5 = "SeatedNude05.jpg";
String IMAGE_NAME6 = "ThreeMusicians06.jpg";


int COLOR_NUMBER = 70;

color[] chosenColor1;
color[] chosenColor2;
color[] chosenColor3;
color[] chosenColor4;
color[] chosenColor5;
color[] chosenColor6;

void pick_color1(PImage input) {
  for (int i=0; i<chosenColor1.length; i++) {
    if (i == 0) chosenColor1[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor1[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor1[i] == chosenColor1[j]);
      }
    }
  }
}

void pick_color2(PImage input) {
  for (int i=0; i<chosenColor2.length; i++) {
    if (i == 0) chosenColor2[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor2[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor2[i] == chosenColor2[j]);
      }
    }
  }
}
void pick_color3(PImage input) {
  for (int i=0; i<chosenColor3.length; i++) {
    if (i == 0) chosenColor3[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor3[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor3[i] == chosenColor3[j]);
      }
    }
  }
}
void pick_color4(PImage input) {
  for (int i=0; i<chosenColor4.length; i++) {
    if (i == 0) chosenColor4[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor4[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor4[i] == chosenColor4[j]);
      }
    }
  }
}

void pick_color5(PImage input) {
  for (int i=0; i<chosenColor5.length; i++) {
    if (i == 0) chosenColor5[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor5[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor5[i] == chosenColor5[j]);
      }
    }
  }
}

void pick_color6(PImage input) {
  for (int i=0; i<chosenColor6.length; i++) {
    if (i == 0) chosenColor6[i] = input.get((int)random(input.width), (int)random(input.height));
    else {
      for (int j=0; j<i; j++) {
        do chosenColor6[i] = input.get((int)random(input.width), (int)random(input.height));
        while (chosenColor6[i] == chosenColor6[j]);
      }
    }
  }
}
