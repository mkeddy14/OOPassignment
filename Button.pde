class Button
{
   float x , y ;

   Button(float x, float y)
   {
     this.x = x;
     this.y = y;
   }
   
   void render()
   {
     stroke(0);
     fill(255);
     ellipse(x,y,20,20);
     ellipse(250,550,20,20);
     ellipse(250,600,20,20);
     ellipse(250,650,20,20);
     
   }
   
   void update()
   {
     stroke(0);
     fill(0,255,0);
     ellipse(x,y,20,20);
   }
}