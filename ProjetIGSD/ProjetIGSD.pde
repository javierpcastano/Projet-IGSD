//1 Le terrain
PShape terr;
PImage texture;
float theta;

void setup(){
  size(1000, 1000,P3D);
  texture = loadImage("StAuban_texture.jpg");
  terr = loadShape("hypersimple.obj");
  terr.setTexture(texture);
}

void draw(){
  //background(255,255,255);
  pushMatrix();
  translate (width/2,height/2);
  rotate(theta);
  rotateY(theta);
  scale(1);
  shape(terr);
  popMatrix();
  theta+=0.01;
  
}
