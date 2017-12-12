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
     textSize(16);
     text("Planet 1", 300, 505);
     text("Planet 2", 300, 555);
     text("Planet 3", 300, 605);
     text("Planet 4", 300, 655);
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