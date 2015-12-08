void setup()
{
  size(1000,600);
  data = new Data();
  graph = new Graph();
  menu = new Menu();
  full_trend = new Full_trend();
  bar = new Bar_Graph(); 
  background(71,14,205);
}
Bar_Graph bar;
Graph graph;
Data data;
Full_trend full_trend;
Menu menu;

boolean altind = false; //alternative indicator
boolean other = false; //a super alternate indicator
int menu_select = 0;

void draw()
{  
  switch(menu_select)
  {
    case 0:
      background(71,14,205);
      menu.draw_menu();
      break;
    case 1:
      background(71,14,205);
      menu.escape();
      graph.line_graph_borders();
      
      if(other)
      {
        graph.anti_data_sort();
        if(altind == false)
        {
          graph.bottom_ten_draw();
          graph.bottom_ten_circles();
          graph.bottom_ten_text();
        }
        else
        {
          graph.alt_bottom_draw();
          graph.alt_bottom_circles();
          graph.alt_bottom_text();
        }
      }
      else
      {
        graph.data_sort();
        if(altind == false)
        { 
         graph.line_graph_draw();
         graph.graph_circles();
         graph.line_text();
        }
        else
        {
         graph.alt_line_draw();
         graph.alt_graph_circles();
         graph.alt_line_text();
        }
      }
      break;
      
    case 2:
      background(71,14,205);
      menu.escape();
      graph.line_graph_borders();
      
      if(other)
      {
        full_trend.simul_data_sort();
        full_trend.big_graph();
        full_trend.alt_big();
        full_trend.simul_text();
      }
      else 
      {
        full_trend.data_sort();
        if(altind == false)
        {
         full_trend.anti_data_sort();
         full_trend.alt_big();
         full_trend.alt_text();
        }
        else
        {
         full_trend.data_sort();
         full_trend.big_graph();
         full_trend.big_text();
        }
      }
       break;
       
     case 3:
       background(71,14,205);
       menu.escape();
       bar.data_sort();
       graph.line_graph_borders();
       
       if(altind == false)
       {
         bar.alt_bar_draw();
         bar.bar_text();
       }
       else
       {
         bar.bar_draw(); 
         bar.alt_bar_text();
       } 
       break;
       
     case 4:
       background(71,14,205);
       menu.info();
       menu.escape();
       break;
       
     default:
       menu_select = 0;
  }
}
void mousePressed()
{
  if(menu_select == 0)
  {
    if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 100  && mouseY < 100 + 50)
    {
      menu_select = 1;
    }
    if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 200  && mouseY < 200 + 50)
    {
      menu_select = 2;      
    }
    if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 300  && mouseY < 300 + 50)
    {
      menu_select = 3;
    }
    if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 400  && mouseY < 400 + 50)
    {
      menu_select = 4;
    }
  }
  
  if(menu_select == 1 || menu_select == 2 || menu_select == 3)
  {
    if(mouseX > width/2 - 100 && mouseX < width/2 + 100 && mouseY > 25  && mouseY < 75)
    {
      other = !other;
    }
    else
    {
      altind = !altind;
    }
  }
  if(menu_select == 1 || menu_select == 2 || menu_select == 3 || menu_select == 4)
  {
    if(mouseX > width - 80 && mouseX < width - 30 && mouseY > 25  && mouseY < 75)
    {
      menu_select = 0;
    }
  }
}
