class Data
{
      String gdp_data[];
      String murder_data[];
      String gdp[] = new String[306];
      String murder[] = new String[306];
      String temparray1[] = new String[2];
      String temparray2[] = new String[2];
      Float gdp_numbers[] = new Float[153];
      Float murder_numbers[] = new Float[153];
      String gdp_nations[] = new String[153];
      String murder_nations[] = new String[153];
      //note to self: clean this up a bit. Jesus Christ...
   
  //////////////////////////////////////////////////////////////////    
      Data()
      {
        int j;
        int i = 0;
        //Load data into arrays
        gdp_data = loadStrings("gdp_data.csv");
        murder_data = loadStrings("murder_data.csv");
        
        //sort arrays alphabetically
        gdp_data = sort(gdp_data);
        murder_data = sort(murder_data);
        
        //split arrays by the commas
        for(String g:gdp_data)
        {
          temparray1 = g.split(",");
          arrayCopy(temparray1, 0, gdp, i, 2);
          if(i<306)
          {
            i+=2;
          }
        }
        
        i = 0;
        for(String m:murder_data)
        {
          temparray2 = m.split(",");
          arrayCopy(temparray2, 0, murder, i, 2);
          if(i<306)
          {
            i+=2;
          }
        }
        //split arrays into two, one with numbers, the other with strings
        j = 0;
        for(i = 0; i < murder.length; i+=2)
        {
          murder_nations[j] = murder[i];
          murder_numbers[j] = Float.parseFloat(murder[i+1]);
       
          gdp_nations[j] = gdp[i];
          gdp_numbers[j] = Float.parseFloat(gdp[i+1]);
          j++;
         
        }        
      }
////////////////////////////////////////////////////////////////////////      

      void data_sort()
      {
         int j;
         boolean death = true; 
         boolean taxes = true;
         float temp; 
         String temp_string;
    
         while ( taxes && death)
         {
             taxes = false;
             death = false;
              for( j=0;  j < gdp_numbers.length -1;  j++ )
              {
                   if ( gdp_numbers[ j ] > gdp_numbers[j+1] )
                   {
                           temp = gdp_numbers[ j ];              
                           gdp_numbers[ j ] = gdp_numbers[ j+1 ];
                           gdp_numbers[ j+1 ] = temp;
                           
                           temp_string = gdp_nations[ j ];
                           gdp_nations[ j ] = gdp_nations[ j+1 ];
                           gdp_nations[ j+1 ] =  temp_string;
                           taxes = true;              
                   } 
                   if ( murder_numbers[ j ] > murder_numbers[j+1] )
                   {
                           temp = murder_numbers[ j ];              
                           murder_numbers[ j ] = murder_numbers[ j+1 ];
                           murder_numbers[ j+1 ] = temp;
                           
                           temp_string = murder_nations[ j ];
                           murder_nations[ j ] = murder_nations[ j+1 ];
                           murder_nations[ j+1 ] =  temp_string;
                           death = true;              
                   }
              } 
         }
      }
      void anti_data_sort()//sorts opposite to data_sort();
      {
         int j;
         boolean death = true; 
         boolean taxes = true;
         float temp; 
         String temp_string;
    
         while ( taxes && death)
         {
             taxes = false;
             death = false;
              for( j=0;  j < gdp_numbers.length -1;  j++ )
              {
                   if ( gdp_numbers[ j ] < gdp_numbers[j+1] )
                   {
                           temp = gdp_numbers[ j ];              
                           gdp_numbers[ j ] = gdp_numbers[ j+1 ];
                           gdp_numbers[ j+1 ] = temp;
                           
                           temp_string = gdp_nations[ j ];
                           gdp_nations[ j ] = gdp_nations[ j+1 ];
                           gdp_nations[ j+1 ] =  temp_string;
                           taxes = true;            
                   } 
                   if ( murder_numbers[ j ] < murder_numbers[j+1] )
                   {
                           temp = murder_numbers[ j ];              
                           murder_numbers[ j ] = murder_numbers[ j+1 ];
                           murder_numbers[ j+1 ] = temp;
                           
                           temp_string = murder_nations[ j ];
                           murder_nations[ j ] = murder_nations[ j+1 ];
                           murder_nations[ j+1 ] =  temp_string;
                           death = true;            
                   }
              } 
         }
      }
      void simul_data_sort()
       {
         int j;
         boolean death = true; 
         boolean taxes = true;
         float temp; 
         float temp2;
         String temp_string;
         String temp_string2;
    
         while ( taxes )
         {
             taxes = false;
              for( j=0;  j < gdp_numbers.length -1;  j++ )
              {
                   if ( gdp_numbers[ j ] < gdp_numbers[j+1] )
                   {
                           temp = gdp_numbers[ j ];              
                           gdp_numbers[ j ] = gdp_numbers[ j+1 ];
                           gdp_numbers[ j+1 ] = temp;
                           
                           temp_string = gdp_nations[ j ];
                           gdp_nations[ j ] = gdp_nations[ j+1 ];
                           gdp_nations[ j+1 ] =  temp_string;            
     
                           temp2 = murder_numbers[ j ];              
                           murder_numbers[ j ] = murder_numbers[ j+1 ];
                           murder_numbers[ j+1 ] = temp2;
                           
                           temp_string2 = murder_nations[ j ];
                           murder_nations[ j ] = murder_nations[ j+1 ];
                           murder_nations[ j+1 ] =  temp_string2;           
                           taxes = true;      
                   }
              } 
         }
      }
}
