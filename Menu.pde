class Menu
{
   
 //constructors
   int border = 50;
   Menu()
   {
     //default
   }
   void draw_menu()
   {
     fill(255);
     rect(width/2-100,100,200,50);
     fill(0);
     textSize(15);
     text("Top/bottom Countries!",width/2 -80,130);
     
     fill(255);
     rect(width/2-100,200,200,50);
     fill(0);
     textSize(15);
     text("Full Trend Graph!",width/2 -60,230);
     
     fill(255);
     rect(width/2-100,300,200,50);
     fill(0);
     textSize(15);
     text("Bar Graph!",width/2 -40,330);
     
     fill(255);
     rect(width/2-100,400,200,50);
     fill(0);
     textSize(15);
     text("Information!",width/2 -40,430);
   }  
   
   void escape()
   {
     fill(255);
     rect(width - 80,30,60,40);
     fill(0);
     textSize(15);
     text("ESCAPE",width - 75, 50,130); 
   }
   
   void info()
   {
     fill(255);
     rect(border*2,border*2,width-border*3,height -border*3);
     fill(0);
     stroke(0);
     text("Insturctions for use!",width/2-100,200);
     text("1. Click the mouse on buttons to do stuff",width/2-100,300);
     text("2. Click the mouse off buttons to alternate the graphs",width/2-100,400);
     text("3. Please ignore the ugliness, my program is beautiful inside.",width/2-100,500);
   }

}
