  String[] gdp_data = loadStrings("gdp_data.csv");
  String[] murder_data = loadStrings("murder_data.csv");
  String gdp[];
  String murder[];
  
   void setup()
    {
      //Split data via commas
      for(String g:gdp_data)
      {
        gdp = g.split(" ");
        println(gdp);
      }
      
      for(String m:murder_data)
      {
        murder = m.split(" ");
        println(murder);
      }
    }
    



