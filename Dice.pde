void setup()
{
  size(600, 650);
  noLoop();
}
void draw()
{
  background(0);
  int total=0;
  total=0;
  for (int x= 0; x <= 500; x+=55)
  {
    for (int y= 0; y <= 550; y+=55)
    {
      Die bob = new Die(y, x);
      bob.show();

      total+=bob.roll;
    }
  }
  fill(255);
  textAlign(CENTER);
  text( "The sum of these dice is " + total, 300, 600);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, roll, total;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    roll();
  }
  void roll()
  {
    roll = (int)(Math.random() * 6 + 1);
  }
  void show()
  {
    if (roll==1)
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(50-13+myX-12, 50-13+myY-12, 8, 8);
    } else if (roll==2)
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(47+myX-12, 28+myY-12, 8, 8);
      ellipse(29+myX-12, 45+myY-12, 8, 8);
    } else if (roll==3)
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(47+myX-12, 27+myY-12, 8, 8);
      ellipse(37+myX-12, 37+myY-12, 8, 8);
      ellipse(27+myX-12, 47+myY-12, 8, 8);
    } else if (roll==4)
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(47+myX-12, 28+myY-12, 8, 8);
      ellipse(27+myX-12, 28+myY-12, 8, 8);
      ellipse(47+myX-12, 47+myY-12, 8, 8);
      ellipse(27+myX-12, 47+myY-12, 8, 8);
    } else if (roll==5)
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(47+myX-12, 28+myY-12, 8, 8);
      ellipse(27+myX-12, 28+myY-12, 8, 8);
      ellipse(47+myX-12, 47+myY-12, 8, 8);
      ellipse(27+myX-12, 47+myY-12, 8, 8);
      ellipse(37+myX-12, 37+myY-12, 8, 8);
    } else
    {
      fill(255);
      rect(myX, myY, 50, 50, 10);
      fill(0);
      ellipse(47+myX-12, 28-2+myY-12, 8, 8);
      ellipse(27+myX-12, 28-2+myY-12, 8, 8);
      ellipse(47+myX-12, 47+2+myY-12, 8, 8);
      ellipse(27+myX-12, 47+2+myY-12, 8, 8);
      ellipse(47+myX-12, 47-10+myY-12, 8, 8);
      ellipse(27+myX-12, 47-10+myY-12, 8, 8);
    }
  }
}
