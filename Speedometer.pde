class Speedometer
{
  float cx, cy;
  float radius;
  float theta;
  float speed;
  float frequency;
  color c;
  
  Speedometer(float cx, float cy, float radius, float frequency, color c)
  {
    this.cx = 450;
    this.cy = 650;
    this.radius = radius;
    this.frequency = frequency;
    this.speed = (TWO_PI / 120.0) * frequency;
    this.theta = 0;
    this.c = c;
  }
  
  void update()
  {
    theta += speed;
  }
  