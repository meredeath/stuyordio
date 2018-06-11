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
    x=prev.x + speed * (cos(direction)-2);
    y=prev.y + speed * (sin(direction)-2);
    radius=h.radius;
    c=h.c;
  }
  
  void update(){
    direction=h.direction;
    x=prev.x + speed * (cos(direction)-2);
    y=prev.y + speed * (sin(direction)-2);
  }
  
  void setPrev(SnakeFrag s){
    prev=s;
  }
  
  SnakeFrag getPrev(){
    return prev;
  }
}
