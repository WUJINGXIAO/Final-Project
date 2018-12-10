
class Colorful
{
  int x, y, br = 255;
  float vx, vy, speed = random(1, 10);
  boolean box = false;
  float r = random(5, 20); 
  Colorful(float x_, float y_, float a)
  {
    x = int(x_);
    y = int(y_);
    vx = cos(a) * speed;
    vy = sin(a) * speed;
    if (random(100)>50)
      box = true;
  }
  void update()
  {
    x += vx;
    y += vy;
    if (x <= 0 || x >= width)vx *= -1;
    if (y <= 0 || y >= height)vy *= -1;
    br -= 10 / speed;
  }
  void show()
  {
    color col = int(map(dist(mouseX, mouseY, x, y), 0, (width + height)/2, 0, 255));
    colorMode(HSB);
    stroke(col, 255, br);
    fill(col, 255, br, 100);
    if (box)
      rect(x, y, r, r);
    else
      ellipse(x, y, r, r);
  }
}
