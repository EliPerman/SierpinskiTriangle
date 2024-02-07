int k = 125, h = 0;
public void setup()
{
  size(1000,1000);
  colorMode(HSB, 1000, 100, 100);
}
public void draw()
{
  background((h + 500)%1000, 100, 100);
  fill(h, 100, 100);
  sierpinski(0, 0, 500);
}
public void mouseDragged(){
  k = Math.max(10, (int)(mouseY * 0.55));
  h = mouseX;
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= k){
    triangle(x, y, x + len, y, x + len/2, y + (float)(Math.sqrt(3)/2*len));
    triangle(x + len, y, x + 2*len, y, x + 3*len/2, y + (float)(Math.sqrt(3)/2*len));
    triangle(x + len/2, y + (float)(Math.sqrt(3)/2*len), x + 3*len/2, y + (float)(Math.sqrt(3)/2*len), x + len, y + (float)(Math.sqrt(3)*len));
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len, y, len/2);
    sierpinski(x + len/2, y + (int)(Math.sqrt(3)/2*len), len/2);
  }
}
