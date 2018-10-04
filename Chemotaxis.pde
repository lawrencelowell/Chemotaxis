Planets[] holey;
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
  fill(255,255,255,10);
  ellipse(450,450,600,600);
  for (int i = 0; i < holey.length; i ++)
  {
    holey[i].show();
    holey[i].distance();
    holey[i].walk();
  }
      BlackHole Holed = new BlackHole();
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
    mySize = 3+(int)(Math.random()*17);
  }

  void walk()
  {
    if (myX <= 450 && distR < 300) {
      myX = myX + 100/(distX+1);
    }
        if (myX > 450 && distR < 300) {
      myX = myX - 100/(distX+1);
    }
    
        if (distR > 300 ){
    myX = myX + 2*(float)Math.random()-0.99;
    myY = myY + 2*(float)Math.random()-0.99;
        }




    if (myY <= 450 && distR < 301) {
      myY = myY + 100/(distY+1);
    }

    if (myY > 450 && distR < 301) {
      myY = myY - 100/(distY+1);
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

System.out.println(distR);
}
}

class BlackHole
{
  float radius;
  BlackHole()
  {
    radius = 100;
  }
  void show(){
    fill(0);
    ellipse(450,450,radius*2,radius*2);
}
}
