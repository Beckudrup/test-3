//Opgave 22.

PImage img;
int x=100;
int y=0;
float xSpeed= 5;
float ySpeed=0;
PImage Duck;
PImage Duck2;
PImage Land;
int y2 = 0;
int x2 = -500;
float xSpeed2 = 5;
float ySpeed2 = 0;
float kills = 0; 

void setup() {
  size(1280, 720);
}

void draw() {
  clear();
  textSize(25);
//The planes speed
  x+=xSpeed;
  y+=ySpeed;
  x2+=xSpeed2;
  y2+=ySpeed2;

//The photoes
  Land = loadImage("Land.jpg");
  background(Land);

  img=loadImage("Hunter.jpg");
  image(img, -100, 500);

  Duck = loadImage ("Duck.jpg"); 
  image(Duck, x, y);
  Duck2 = loadImage ("Duck.jpg"); 
  image (Duck, x2, y2);
  text("Click with your mouse to shoot Duckling Duck down from his plane >:) ", 0, 450);
  text ("You got this many kills"+kills, 0, 500);
}

void mousePressed() {
//Makes our ducks plane crash and tracks kills >:D
  if (mouseX<500 && mouseY>405) {
    if (kills==0) {
      ySpeed = 10;
      kills = 1;
    } else {
      ySpeed2 = 10;
      kills = 2;
    }
  }
}
