public class BodyFrag extends SnakeFrag{
  Snake sn;
  SnakeFrag prev;
  Head h;
  
  void update(){
    direction=h.direction;
    x=x + speed * (cos(direction)-5);
    y=y + speed * (sin(direction)-5);
  }
  
  void setPrev(SnakeFrag s){
    prev=s;
  }
}
