Snowflake [] a ;
void setup()
{ 
  a = new Snowflake[50];
  for(int i = 1;i < a.length ;i +=1)
  {
  a[i] = new Snowflake();
  }
  background(0);
  size(300,300);
}
void draw()
{
  
  for(int q = 1; q < a.length ;q +=1)
  {
  a[q].lookDown();
  a[q].move();
  a[q].erase();
  a[q].show();
  a[q].wrap();
  
 }   
}
void mouseDragged()
{
  noStroke();
  fill(255,0,0);
  ellipse(mouseX,mouseY,10,10);
  
}

class Snowflake
{
  boolean t; 
  int x,y,size;
  Snowflake()
  {
    x = (int)(Math.random()*300);
    y = (int)(Math.random()*300);
    size =(int)(Math.random()*10 + 5);
    t = true;
  }
  void show()
  {
      noStroke();
     fill(255);
    ellipse(x,y,size,size);
  }
  void lookDown()
  {
   if(get(x,y+size) == color(255,0,0)){
     t = false;
  }else{
     t = true;
  }
  }
  void erase()
  {
   stroke(0);
     fill(0);
    ellipse(x,y,size+5,size+5);
  }
  void move()
  {
   if( t == true){
     y+=1;
    }else{
     y =y; 
    }
    
  }
  void wrap()
  {
    if(y%300 == 0){
      stroke(0);
      fill(0);
      ellipse(x,y,size+2,size+2);
      y = 0;
      x = (int)(Math.random()*300);
      size =(int)(Math.random()*10 + 5);
    }
  }
}

