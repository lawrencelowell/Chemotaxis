Planets[] holey;
void setup()
{

  size(900, 900);
  holey = new Planets[160];

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
      BlackHole Holed = new BlackHole();
 Holed.show();
}

class Planets
{
  float myX, myY, mySize,dist1 ;
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
    if (myX <= 450 && dist1 < 300) {
      myX = myX + 30000/(dist1*dist1);
    }
        if (myX > 450 && dist1 < 300) {
      myX = myX - 30000/(dist1*dist1);
    }
    
        if (dist1 > 200 ){
    myX = myX + 2*(float)Math.random()-0.99;
    myY = myY + 2*(float)Math.random()-0.99;
        }




    if (myY <= 450 && dist1 < 300) {
      myY = myY + (30000/(dist1*dist1));
    }

    if (myY > 450 && dist1 < 300) {
      myY = myY - 30000/(dist1*dist1);
    }
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
  void distance(){
dist1 = dist(myX,myY,450,450);
System.out.println(dist1);
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
