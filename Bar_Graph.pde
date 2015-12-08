class Bar_Graph extends Data
{
  /*
    This is the bar graph. It's good for being a bar.
    I like it :) 
  */
  int border;
  int graph_height;
  int graph_width;
  float even_space;
  float value;
  float value2;
  int j = 0;
  int k = 0;
  float value_array[] = new float[11];
  
  Bar_Graph()
  {
    border = 100;
    graph_height = height - (border*2);
    graph_width = width - (border*2);
    even_space = map(1,0,153,0,graph_width);
  }
  void bar_draw()
  {
    for(int i = 0; i < murder_numbers.length; i ++)
    {
      value = map(murder_numbers[i],0,100,0,graph_height);
      stroke(0);
      fill(255);
      rect(border+even_space*(i),height - border,even_space,-value);
    }
  }
  void alt_bar_draw()
  {
    for(int i = 0; i < gdp_numbers.length; i ++)
    {
      value = map(gdp_numbers[i],0,150000,0,graph_height);
      stroke(0);
      fill(255);
      rect(border+even_space*(i),height - border,even_space,-value);
    }
  }
  void bar_text()
  {
      textSize(12);
      fill(255);
      text(j,(border+even_space*j-1),border + graph_height + 20);
      text("$0",border - 20, border+ graph_height + 10);
      text("$150000",border - 60, border); 
      text("$75000",border - 50, border+ graph_height/2);
      fill(255);
      text("Annual GDP",20, border - 30);
      text("Countries acending",width/2,height - 20);
      text("153",width - border,border+ graph_height + 15);
  }
  void alt_bar_text()
  {
      textSize(12);
      fill(255);
      text(j,(border+even_space*j-1),border + graph_height + 20);
      text("0",border - 10, border+ graph_height + 10);
      text("100",border - 25, border); 
      text("50",border - 20, border+ graph_height/2);
      fill(255);
      text("Murders per 100,000",20, border - 30);
      text("Countries acending",width/2,height - 20);
      text("153",width-border,border+ graph_height + 15);
  }
}
