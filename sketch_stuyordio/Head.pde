public class Head extends SnakeFrag{
  Snake parent;
  BodyFrag next;
  float speed = 1.5;

  public Head(float x, float y,float rad,color col){
    this.x=x;
    this.y=y;
    radius=rad;
    c=col;
  }
  
  void update(){
    if (abs(x - mouseX) > 10 && abs(y - mouseY) > 10){
        direction = atan2(mouseY - y, mouseX - x);
    }
    x=x + speed * cos(direction);
    y=y + speed * sin(direction);
  }
}
