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
  
    void render()
  {
    stroke(0);
    fill(255);
    ellipse(cx, cy, radius * 2, radius * 2);
    int trailLength = 1;
    for(int i = 0 ; i < trailLength ; i ++)
    {
      stroke(255,0,0);
      float x = cx + sin(theta + i * speed) * radius;
      float y = cy -cos(theta + i * speed) * radius;
      line(cx, cy,x, y);
      
    }
  }
}
  