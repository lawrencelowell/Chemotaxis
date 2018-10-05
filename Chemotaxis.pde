Planets[] holey,holey1;
BlackHole Holed = new BlackHole();
int radius = 100;
s = 0;
void setup()
{

  size(900, 900);
  holey = new Planets[100];

  for (int i=0; i < holey.length; i++)
    holey[i] = new Planets();

}
void draw()
{
      background(30);
  for (int i = 0; i < holey.length; i ++)
  {

    holey[i].show();
    holey[i].distance();
    holey[i].walk();
  }

Holed.show();

}

class Planets
{
  float myX, myY, mySize,distR,distX,distY ;
  int myColor;
  Planets()
  {
    myX = (int)random(width);
    myY = (int)random(width);
    myColor = color((int)(Math.random()*105+100));
    mySize = 3+(int)(Math.random()*25);
  }

  void walk()
  {
    if (myX <= 450 && distR < radius*2 && distR > radius*1.2) {
      myX = myX + radius/(2.5*(distX+1));
    }
        if (myX > 450 && distR < radius*2 && distR > radius*1.2) {
      myX = myX - radius/(2.5*(distX+1));
    }
        if (myX <= 450 && distR < radius*1.2) {
      myX = myX + radius/(2*(distX+1));
    }
        if (myX > 450 && distR < radius*1.2) {
      myX = myX - radius/(2*(distX+1));
    }
    
        if (distR > radius*2 ){
    myX = myX + 2*(float)Math.random()-0.99;
    myY = myY + 2*(float)Math.random()-0.99;
        }




    if (myY <= 450 && distR < radius*2 && distR > radius*1.2) {
      myY = myY + radius/(2.5*(distY+1));
    }

    if (myY > 450 && distR <= radius*2 && distR > radius*1.2) {
      myY = myY - radius/(2.5*(distY+1));
    }
        if (myY <= 450 && distR <= radius*1.2) {
      myY = myY + radius/(2*(distY+1));
    }

    if (myY > 450 && distR <= radius*1.2) {
      myY = myY - radius/(2*(distY+1));
    }
  }

  void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  void distance(){
distR = dist(myX,myY,450,450);
distX = dist(myX,450,myX,myY);
distY = dist(450,myY,myX,myY);

}
}

class BlackHole
{
  BlackHole()
  {
    radius = 100;
  }
  void show(){
    fill(0);
    ellipse(450,450,radius,radius);
}
void field(){
  fill(30,30,30,120);
  ellipse(450,450,radius*4,radius*4);
}
}
void mouseDragged(){
  if (radius < 300)
  radius = radius + 1;
}


