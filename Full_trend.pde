class Full_trend extends Data
{
  int border;
  int graph_height;
  int graph_width;
  float even_space;
  float value;
  float value2;
  int j = 1;
  boolean ind2 = false;
  boolean ind1 = false;
  
  Full_trend()
  {
    border = 100;
    graph_height = height - (border*2);
    graph_width = width - (border*2);
    even_space = map(1,0,153,0,graph_width);
  }
  
  void big_graph()
  {
   j = 1;
   for(int i = 1; i <= murder_numbers.length - 1; i++)
   {
     value = map(murder_numbers[i-1],0,100,0,graph_height);
     value2 = map(murder_numbers[i],0,100,0,graph_height);
     stroke(0,255,0);
     line(border+even_space*(j-1),height - border - value,border+even_space*j,height - border - value2);
     j++;
     fill(255);
     stroke(0);
     rect(width/2-100,25,200,50);
     fill(0);
     textSize(15);
     text("Toggle Comparison",width/2 -70,55);
   }
  }
  void alt_big()
  {  
     j = 1;
     for(int i = 152; i >= 1; i--)
     {
       value = map(gdp_numbers[i-1],0,150000,0,graph_height);
       value2 = map(gdp_numbers[i],0,150000,0,graph_height);
       stroke(255,0,0);
       line(border+even_space*(j-1),height - border - value2,border+even_space*j,height - border - value);
       j++;
       fill(255);
       stroke(0);
       rect(width/2-100,25,200,50);
       fill(0);
       textSize(15);
       text("Toggle Comparison",width/2 -70,55);
     }
  }
  void simul_text()
  {
        fill(0);
        text("GDP ascending -->",width/2-50,height - 20);
        text("Murder Rate Decending -->",width/2-50,height - 50);
        fill(255,0,0);
        text("GDP",750,150);
        fill(0,255,0);
        text("Murder Rate",150,150);
  }
}
