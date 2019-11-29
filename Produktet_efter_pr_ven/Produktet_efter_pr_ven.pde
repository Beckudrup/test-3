PImage img;
int x=100;
int y=0;
float xSpeed= 5;
float ySpeed=0;
PImage Duck;
PImage Duck2;
PImage Land;
//int y2 = 0;
//int x2 = -500;
//float xSpeed2 = 5;
//float ySpeed2 = 0;
float kills = 0; 
float escape = 0;
void setup() {
  size(1280, 720);
}

void draw() {
  clear();
  textSize(25);
//The planes speed
  x+=xSpeed;
  y+=ySpeed;
  //x2+=xSpeed2;
  //y2+=ySpeed2;

//The photoes
  Land = loadImage("Land.jpg");
  background(Land);

  img=loadImage("Hunter.jpg");
  image(img, -100, 500);

  Duck = loadImage ("Duck.jpg"); 
  image(Duck, x, y);
  //Duck2 = loadImage ("Duck.jpg"); 
  //image (Duck, x2, y2);
  text("Click with your mouse to shoot Donald Duck down from his plane >:) ", 0, 450);
  text ("You got this many kills"+kills, 0, 500);
  text ("You suck this many ducks got away"+escape,350,500);
  if(y>=1000){
    
   x=-400;
   y=0;
   ySpeed= 0; 
    kills += 1;
  }
  if(x>=1500){
  escape +=1;
    x=-400;
    
  }
}

void mousePressed() {
//Makes our ducks plane crash and tracks kills >:D
  if (mouseX<500 && mouseY>405) {
    
      ySpeed = 10;
      
    
    
  }
}
