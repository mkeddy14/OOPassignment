void setup()
{
  size(1000, 700);
  radar1 = new Radar(width / 2, height / 2, 50, 0.5, color(0, 255, 0));
  speedometer1 = new Speedometer( width /2, height / 2, 25, 0.5, color(0, 255, 0));
  speed = new Speed2( width /2, height / 2, 25, 0.5, color(0, 255, 0));
  speed2 = new Speed3( width /2, height / 2, 25, 0.5, color(0, 255, 0));
  b1 = new Button(250,500);
  b2 = new Button(250,550);
  b3 = new Button(250,600);
  b4 = new Button(250,650);
}

float cx = 500;
float cy = 0;
float theta = 0;

Radar radar1;
Speedometer speedometer1;
Speed2 speed;
Speed3 speed2;
Button b1;
Button b2;
Button b3;
Button b4;

void draw()
{
  stroke(0);
  fill(153,151,148);
  ellipse(500,700,1600,900);
  fill(60,60,60);
  ellipse(500,0,1600,900);
  fill(8,112,204,220);
  ellipse(500,0,1600,847);
  
  fill(255);
  rect(0,0,50,350);
  rect(950,0,50,350);
  fill(153, 151, 148);
  ellipse(500,0,900,200);
  
  fill(0);
  stroke(0);
  rect(445,495,110,110);
  stroke(255,0,0);
  ellipse(500,550,100,100);
  ellipse(500,550,80,80);
  ellipse(500,550,60,60);
  ellipse(500,550,40,40);
  line(500,500,500, 600);
  line(450,550,550,550 );
  
  stroke(0);
  fill(255);
  ellipse(760 , 500, 20,20);
  ellipse(760 , 550, 20,20);
  ellipse(760 , 600, 20,20);
  ellipse(760 , 650, 20,20);
  textSize(32);
  text("Statistics:", 625, 150);
  text("Planet:", 200, 150);
  stroke(255);
  line(615, 155, 785, 155);
  line(190, 155, 315, 155);
  
   radar1.render();
   radar1.update();
    
   speedometer1.render();
   speedometer1.update();
    
   speed.render();
   speed.update();
  
   speed2.render();
   speed2.update();
   
   b1.render();
   b2.render();
   b3.render();
   b4.render();
   
   barchart(); 
   
   if(mouseX > 230 && mouseX < 270 && mouseY > 480 && mouseY < 520)
   {
     if(mousePressed == true)
     {
       b1.update();
       textSize(20);
       fill(255);
       text("- Species: Human", 615, 200);
       text("- Population: 7 Billion", 615, 250);
       text("- Radius: 6,371km", 615, 300);
       text("- Surface: 71% Water", 615, 350);
       textSize(40);
       text("Earth", 200, 275);
     }
    
   }
   
   if(mouseX > 230 && mouseX < 270 && mouseY > 530 && mouseY < 570)
   {
     if(mousePressed == true)
     {
       b2.update();
       textSize(20);
       fill(255);
       text("- Species: Alien", 615, 200);
       text("- Population: Unknown", 615, 250);
       text("- Radius: 3,390km", 615, 300);
       text("- Surface: Oxidized Iron Rocks", 615, 350);
       textSize(40);
       text("Mars", 200, 275);
       
     }
    
   }
   
   if(mouseX > 230 && mouseX < 270 && mouseY > 580 && mouseY < 620)
   {
     if(mousePressed == true)
     {
       b3.update();
       textSize(20);
       fill(255);
       text("- Species: Unknown", 615, 200);
       text("- Population: Unknown", 615, 250);
       text("- Radius: 69,911km", 615, 300);
       text("- Surface: Hydrogen & Helium Gas", 615, 350);
       textSize(40);
       text("Jupiter", 200, 275);
     }
    
   }
   
   if(mouseX > 230 && mouseX < 270 && mouseY > 630 && mouseY < 670)
   {
     if(mousePressed == true)
     {
       b4.update();
       textSize(20);
       fill(255);
       text("- Species: Unknown", 615, 200);
       text("- Population: Unknown", 615, 250);
       text("- Radius: 58,232km", 615, 300);
       text("- Surface: Hydrogen & Helium Gas", 615, 350);
       textSize(40);
       text("Saturn", 200, 275);
     }
    
   }
   
   
 }
 
 void barchart()
{
  //barchart
  textSize(16);
  fill(255);
  text("Energy Levels", 30, 440);
  text("O2", 45, 490);
  text("CO2", 45, 540);
  text("H2O", 45, 590);
  text("Fuel", 45, 640);
  
  
  noFill();
  float xpos = 470;
  float ypos = 40;
  float xwidth = 25;
  float xheight = 100;
  stroke(0);
  strokeWeight(2);
  for(int i=0; i<200; i+=50)
  {
      float scale = random(-25, 25);
      
      rect(ypos, xpos + i, xheight - scale, xwidth);
    
  }
  
  rect(30, 450, 140, 235);
 
}
 