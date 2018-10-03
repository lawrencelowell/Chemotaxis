Planets[] holey;
void setup()
{
  size(900, 900);
  holey = new Planets[130];
  for (int i=0; i < holey.length; i++)
    holey[i] = new Planets();
}
void draw()
{
  background(30);
  for (int i = 0; i < holey.length; i ++)
  {
    holey[i].show();
    holey[i].walk();
  }
  fill(0);
  ellipse(450, 450, 300, 300);
}

class Planets
{
  float myX, myY, mySize ;
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
    if (myX <= 900 && myX >= 700) {
      myX = myX - 0.3-0.6*(float)Math.random();
    }

    if (myX <= 700 && myX >= 500) {
      myX = myX - 0.4 -0.6*(float)Math.random();
    }

    if (myX <= 200 && myX >= 0) {
      myX = myX + 0.3+0.6*(float)Math.random();
    }

    if (myX <= 400 && myX >= 200) {
      myX = myX + 0.4 +0.6*(float)Math.random();
    }


    if (myX <= 500 && myX >= 400) {
      myX = myX + (int)(Math.random()*8-4);
    }




    if (myY <= 900 && myY >= 700) {
      myY = myY - 0.3-0.6*(float)Math.random();
    }

    if (myY <= 700 && myY >= 500) {
      myY = myY - 0.4 -0.6*(float)Math.random();
    }


    if (myY <= 200 && myY >= 0) {
      myY = myY + 0.3+0.6*(float)Math.random();
    }


    if (myY <= 400 && myY >= 200) {
      myY = myY + 0.4 +0.6*(float)Math.random();
    }

    if (myY <= 500 && myY>= 400) {
      myY = myY + (int)(Math.random()*8-4);
    }
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize, mySize);
  }
}
