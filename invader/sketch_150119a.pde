float x;
float y;
float vx;

void setup()
{
  size(500,500);
 
  x = 0;
  y = 0;
  vx = 1;  
}

void draw()
{
 background(0); 
 rect(x, y,30,30);
 rect(x + 30,y + 30,30, 30 );
  x += vx;
  if(width < x + 30)
  {
    vx *= -1;
    y += 30;
  }
  if(x < 0)
  {
   vx *= -1; 
   y += 30;
  }
}
