Bacteria [] one;
 void setup()   
 {     
  size(500,500);
  
  one = new Bacteria[70];
  for (int i = 0; i < one.length; i ++)
  {
    one[i] = new Bacteria();
  }
 }   
 void draw()   
 {
   background(0);
   
   
   for (int j = 0; j < one.length; j ++)
   {
     one[j].move();
     one[j].show(); 
   }
   
 }


   
 class Bacteria    
 {  
   int x, y;
   
   Bacteria()
   {
     x = 300;
     y = 300;
   }
   void show()
   {
     ellipse(x, y, 5, 5);
     
   }
   void move()
   {
     int ax, ay;
     if(mouseX > x)
     {
       ax = 0;
     }
     else
     {
       ax = 4;
     }
     if(mouseY > y)
     {
       ay = 0;
     }
     else
     {
       ay = 4;
     }
     
     if(mouseX > x && mouseY > y)
     {
       x = x + (int)(Math.random() * 10) - ax;
       y = y + (int)(Math.random() * 10) - ay;
       
     }
     else if(mouseX < x && mouseY < y)
     {
       x = x - (int)(Math.random() * 10) - ax;
       y = y - (int)(Math.random() * 10) - ay;
      
     }
     else if(mouseX < x && mouseY > y)
     {
       x = x - (int)(Math.random() * 10) - ax;
       y = y + (int)(Math.random() * 10) - ay;
       
     }
     else if(mouseX > x && mouseY < y)
     {
       x = x + (int)(Math.random() * 5) - ax;
       y = y - (int)(Math.random() * 5) - ay;
       
     }
     else 
     {
       x = mouseX;
       y = mouseY;
       
     }
     
     
   }

   
 }    
