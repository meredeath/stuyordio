public class Food{
  float x,y,size;
  color c;
  boolean eaten;
  
  Food(){
    x=random(width);
    y=random(height);
    size=5.0;
    c = color(random(256),random(256),random(256));
    eaten=false;
  }
  
  Food(float x,float y){
    this.x=x;
    this.y=y;
    size=3.0;
    c = color(random(256),random(256),random(256));
    eaten=false;
  }
  
  void display(){
    fill(c);
    ellipse(x,y,size,size);
  }
}
