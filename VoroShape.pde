//A basic voronoi shape class to save shape and centroid info
class VoroShape {
  PShape shape;
  PVector centroid;

  VoroShape(PShape shape, PVector centroid) {
    this.shape = shape;
    this.centroid = centroid;
  }
}

