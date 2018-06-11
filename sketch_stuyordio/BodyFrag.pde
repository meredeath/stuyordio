public class BodyFrag extends SnakeFrag{
  Snake sn;
  SnakeFrag prev;
  Head h;
  
   public BodyFrag(Head h, SnakeFrag p){
    prev=p;
    this.h=h;
    direction=h.direction;
    speed=h.speed;
    //println(x);
    //println(prev);
    //println(prev.x);
    //println(speed);
    //println(direction);
    x=prev.x + speed * (cos(direction));
    y=prev.y + speed * (sin(direction));
    radius=h.radius;
    c=h.c;
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
