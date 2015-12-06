class Menu
{
   
 //constructors
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
   }  

}
