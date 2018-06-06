public class SnakeFrag{
  float x,y,xspeed,yspeed,radius;
  color c;
  
  public SnakeFrag(){
    x=mouseX-10.0;
    y=mouseY-10.0;
    xspeed=2.0;
    yspeed=2.0;
    size=5.0;
    c=color(255,0,255);
  }
  
  public SnakeFrag(int rad, color _c){
    x=mouseX-10.0;
    y=mouseY-10.0;
    xspeed=xs;
    yspeed=ys;
    radius=rad;
    c=_c;
  }
  
  public void display(){
    fill(c);
    ellipse(x,y,radius,radius);
  }
}
