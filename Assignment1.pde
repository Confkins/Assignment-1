 void setup()
{
  size(1000,600);
  data = new Data();
  graph = new Graph();
  menu = new Menu();
  full_trend = new Full_trend(); 
  background(71,14,205);
}
Graph graph;
Data data;
Full_trend full_trend;
Menu menu;
boolean altind = false; //alternative indicator
boolean other = false;
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
      graph.line_graph_borders();
      
      if(other)
      {
        if(altind == false)
        {
          graph.anti_data_sort();
          graph.bottom_ten_draw();
          graph.bottom_ten_circles();
          graph.bottom_ten_text();
        }
        else
        {
          graph.anti_data_sort();
          graph.alt_bottom_draw();
          graph.alt_bottom_circles();
          graph.alt_bottom_text();
        }
      }
      else if(altind == false)
      { 
       graph.data_sort();
       graph.line_graph_draw();
       graph.graph_circles();
       graph.line_text();
      }
      else
      {
       graph.data_sort();
       graph.alt_line_draw();
       graph.alt_graph_circles();
       graph.alt_line_text();
      }
      break;
    case 2:
      background(71,14,205);
      graph.line_graph_borders();
      
      if(other)
      {
        full_trend.simul_data_sort();
        full_trend.big_graph();
        full_trend.alt_big();
        full_trend.simul_text();
      }
      else if(altind == false)
      {
       full_trend.anti_data_sort();
       full_trend.alt_big();
      }
      else
      {
       full_trend.data_sort();
       full_trend.big_graph();
      }

       break;
     case 3:
       background(71,14,205);
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
  }
  
  if(menu_select == 1 || menu_select == 2)
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
}

void keyPressed()
{
  if(key == 'x')
  {
    menu_select = 0;
  }
}
