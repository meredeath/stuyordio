import java.util.*;
public class SnakeFrag{
  float x,y,xspeed,yspeed,radius;
  color c;
  SnakeFrag next;
  
  public SnakeFrag(){
    x=width/2.0;
    y=height/2.0;
    xspeed=2.0;
    yspeed=2.0;
    radius=20.0;
    c=color(255,0,255);
  }
  
    public SnakeFrag(float x, float y){
    this.x=x;
    this.y=y;
    xspeed=2.0;
    yspeed=2.0;
    radius=20.0;
    c=color(255,0,255);
  }
  
  public SnakeFrag(float _x,float _y,float xs,float ys,float rad,color c){
    x=_x;
    y=_y;
    xspeed=xs;
    yspeed=ys;
    radius=rad;
    this.c=c;
  }
  float getX(){
    return x;
  }
  float getY(){
    return y;
  }
  
  public void display(){
    noStroke();
    fill(c);
    ellipse(x,y,radius,radius);
  }
  
  void update(){
    x+=xspeed;
    y+=yspeed;
  }
  
  void checkWalls(){
    if(x>width-radius || x<radius){
      xspeed = -xspeed;
    }
    if(y>height-radius || y<radius){
      yspeed = -yspeed;
    }
  }
}
