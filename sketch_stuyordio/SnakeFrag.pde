import java.util.*;
public class SnakeFrag{
  float x,y,radius,direction,speed;
  color c;
  
  public SnakeFrag(){
    x=width/2.0;
    y=height/2.0;
    radius=20.0;
    c=color(random(256),random(256),random(256));
  }
  
    public SnakeFrag(float x, float y,float rad,color col){
    this.x=x;
    this.y=y;
    radius=rad;
    c=col;
  }
  
  public void display(){
    noStroke();
    fill(c);
    ellipse(x,y,radius,radius);
  }
  
}
