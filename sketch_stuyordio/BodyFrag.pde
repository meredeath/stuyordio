public class BodyFrag extends SnakeFrag{
  Snake sn;
  SnakeFrag prev;
  Head h;
  
   public BodyFrag(Snake parent, SnakeFrag p){
    prev=p;
    direction=parent.direction;
    speed=parent.speed;
    //println(x);
    //println(prev);
    //println(prev.x);
    //println(speed);
    //println(direction);
    x=prev.x + speed * (cos(direction));
    y=prev.y + speed * (sin(direction));
    radius=parent.radius;
    c=parent.c;
  }
  
  void update(){
    direction=h.direction;
    x=prev.x + speed * (cos(direction));
    y=prev.y + speed * (sin(direction));
  }
  
  void setPrev(SnakeFrag s){
    prev=s;
  }
  
  SnakeFrag getPrev(){
    return prev;
  }
}
