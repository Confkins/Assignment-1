class Graph extends Data
{
  /*
  This is the class for the line graph, and their alternate
  versions. In fairness this is a lot of seperate functions
  but I like how it's turned out. It's got a nice amount of
  functionality.
  */
  int border;
  int graph_height;
  int graph_width;
  float even_space;
  float value;
  float value2;
  int j = 1;
  int k = 0;
  float value_array[] = new float[11];
  
  Graph()
  {
    //constructors
    border = 100;
    graph_height = height - (border*2);
    graph_width = width - (border*2);
    even_space = map(1,0,10,0,graph_width);
  }
   
  void line_graph_draw()
 {  
   k = 0;
   j = 1;
   stroke(255);
   for(int i = 143; i <= murder_numbers.length - 1; i++)
   {
     value = map(murder_numbers[i-1],0,100,0,graph_height);
     value2 = map(murder_numbers[i],0,100,0,graph_height);
     line(border+even_space*(j-1),height - border - value,border+even_space*j,height - border - value2);
     value_array[k] = value2;
     j++;
     k++;
     fill(255);
     rect(width/2-100,25,200,50);
     fill(0);
     textSize(15);
     text("Toggle Comparison",width/2 -70,55);
   }

 }
  void line_graph_borders()
 {
    stroke(255);
    line(border,border,border,height - border);
    line(border,height - border, width - border, height - border);
 } 
 
 void graph_circles()
 {
   j = 1;
   k = 143;
   for(int i = 0; i < value_array.length -1; i++)
   {
     if(mouseX > border+(even_space*j)-30 && mouseX < border+(even_space*j)+30 && mouseY > (height - border - value_array[i]) -30 && mouseY < (height - border - value_array[i]) + 30)
     {
       fill(255,20,20);
       stroke(255,20,20);
       ellipse(border+(even_space*j),height - border - value_array[i],13,13);
       text(murder_nations[k],(border+even_space*j)-5,height - border - value_array[i] + 20);
       text(murder_numbers[k],(border+even_space*j)-5,height - border - value_array[i] + 40);
     }
     else
     {
       fill(255);
       stroke(255);
       ellipse(border+(even_space*j),height - border - value_array[i],13,13);
     }
     j++;
     k++;
   }
 }
   void alt_line_draw()
   {  
     k = 0;
     j = 1;
     stroke(255);
     for(int i = 143; i <= murder_numbers.length - 1; i++)
     {
       value = map(gdp_numbers[i-1],0,150000,0,graph_height);
       value2 = map(gdp_numbers[i],0,150000,0,graph_height);
       line(border+even_space*(j-1),height - border - value,border+even_space*j,height - border - value2);
       value_array[k] = value2;
       j++;
       k++;
       fill(255);
       rect(width/2-100,25,200,50);
       fill(0);
       textSize(15);
       text("Toggle Comparison",width/2 -70,55);
     }
   }
   void alt_graph_circles()
   {
     j = 1;
     k = 143;
     for(int i = 0; i < value_array.length -1; i++)
     {
       if(mouseX > border+(even_space*j)-30 && mouseX < border+(even_space*j)+30 && mouseY > (height - border - value_array[i]) -30 && mouseY < (height - border - value_array[i]) + 30)
       {
         fill(255,60,60);
         stroke(255,60,60);
         ellipse(border+(even_space*j),height - border - value_array[i],13,13);
         text(gdp_nations[k],(border+even_space*j)-5,height - border - value_array[i] + 20);
         text("$"+gdp_numbers[k],(border+even_space*j)-5,height - border - value_array[i] + 40);
       }
       else
       {
         fill(255);
         stroke(255);
         ellipse(border+(even_space*j),height - border - value_array[i],13,13);
       }
       j++;
       k++;
     }  
   }
   void line_text()
   {
     for(j = 1; j < value_array.length; j++)
     {
     textSize(12);
     fill(255);
     text(j,(border+even_space*j-1),border + graph_height + 20);
     text("0",border - 10, border+ graph_height + 10);
     text("100",border - 25, border); 
     text("50",border - 20, border+ graph_height/2);
     fill(255);
     text("Murders per 100,000",20, border - 30);
     text("Top ten countries",width/2,height - 20);
     }
   }
   void alt_line_text()
   {
     for(j = 1; j < value_array.length; j++)
     {
     textSize(12);
     fill(255);
     text(j,(border+even_space*j-1),border + graph_height + 20);
     text("$0",border - 30, border+ graph_height + 10);
     text("$150000",border - 50, border); 
     text("$75000",border - 50, border+ graph_height/2);
     fill(255);
     text("Annual GDP",20, border - 30);
     text("Top ten countries",width/2,height - 20);
     }
   }
   
   //After this all the functions are essentially duplicates
   
   void bottom_ten_draw()
   {
     k = 0;
     j = 1;
     stroke(255);
     for(int i = 143; i <= murder_numbers.length - 1; i++)
     {
       value = map(murder_numbers[i-1],0,murder_numbers[143],0,graph_height);
       value2 = map(murder_numbers[i],0,murder_numbers[143],0,graph_height);
       line(border+even_space*(j-1),height - border - value,border+even_space*j,height - border - value2);
       value_array[k] = value2;
       j++;
       k++;
       fill(255);
       rect(width/2-100,25,200,50);
       fill(0);
       textSize(15);
       text("Toggle Comparison",width/2 -70,55);
     }
   }
   void bottom_ten_circles()
   {
       j = 1;
       k = 10;
       for(int i = 0; i < value_array.length -1; i++)
       {
         if(mouseX > border+(even_space*j)-30 && mouseX < border+(even_space*j)+30 && mouseY > (height - border - value_array[i]) -30 && mouseY < (height - border - value_array[i]) + 30)
          {
           fill(255,20,20);
           stroke(255,20,20);
           ellipse(border+(even_space*j),height - border - value_array[i],13,13);
           text(murder_nations[k],(border+even_space*j)-5,height - border - value_array[i] + 20);
           text(murder_numbers[k],(border+even_space*j)-5,height - border - value_array[i] + 40);
          }
         else
          {
           fill(255);
           stroke(255);
           ellipse(border+(even_space*j),height - border - value_array[i],13,13);
          }
         j++;
         k--;
       }
   }
   void bottom_ten_text()
   {
     for(j = 1; j < value_array.length; j++)
     {
       textSize(12);
       fill(255);
       text(j,(border+even_space*j-1),border + graph_height + 20);
       text("0",border - 10, border+ graph_height + 10);
       text("100",border - 25, border); 
       text("50",border - 20, border+ graph_height/2);
       fill(255);
       text("Murders per 100,000",20, border - 30);
       text("Bottom ten countries",width/2,height - 20);
     }
   }
   void alt_bottom_draw()
   {
     k = 0;
     j = 1;
     stroke(255);
     for(int i = 143; i <= murder_numbers.length - 1; i++)
     {
       value = map(gdp_numbers[i-1],0,gdp_numbers[143],0,graph_height);
       value2 = map(gdp_numbers[i],0,gdp_numbers[143],0,graph_height);
       line(border+even_space*(j-1),height - border - value,border+even_space*j,height - border - value2);
       value_array[k] = value2;
       j++;
       k++;
       fill(255);
       rect(width/2-100,25,200,50);
       fill(0);
       textSize(15);
       text("Toggle Comparison",width/2 -70,55);
     }
   }  
   void alt_bottom_circles()
   {
     j = 1;
     k = 10;
     for(int i = 0; i < value_array.length -1; i++)
     {
       if(mouseX > border+(even_space*j)-30 && mouseX < border+(even_space*j)+30 && mouseY > (height - border - value_array[i]) -30 && mouseY < (height - border - value_array[i]) + 30)
       {
         fill(255,60,60);
         stroke(255,60,60);
         ellipse(border+(even_space*j),height - border - value_array[i],13,13);
         text(gdp_nations[k],(border+even_space*j)-5,height - border - value_array[i] + 20);
         text("$"+gdp_numbers[k],(border+even_space*j)-5,height - border - value_array[i] + 40);
       }
       else
       {
         fill(255);
         stroke(255);
         ellipse(border+(even_space*j),height - border - value_array[i],13,13);
       }
       j++;
       k++;
     }
   }
   void alt_bottom_text()
   {
     for(j = 1; j < value_array.length; j++)
     {
       textSize(12);
       fill(255);
       text(j,(border+even_space*j-1),border + graph_height + 20);
       text("$0",border - 30, border+ graph_height + 10);
       text("$150000",border - 50, border); 
       text("$75000",border - 50, border+ graph_height/2);
       fill(255);
       text("Annual GDP",20, border - 30);
       text("Bottom ten countries",width/2,height - 20);
     }
   }
}
