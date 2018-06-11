import java.util.*;
public class Snake{
  private LinkedList<SnakeFrag> frags;
  float len, radius, speed,x,y,direction;
  color c;
  
  public Snake(){
    frags = new LinkedList<SnakeFrag>();
    for(int i=0;i<10;i++){
      //frags.add(new SnakeFrag());
    }
  }
  
  public Snake(float _x,float _y,float len, float r, int c1, int c2, int c3){
    frags = new LinkedList<SnakeFrag>();
    this.len=len;
    radius=r;
    x=_x;
    y=_y;
    speed=2.5;
    direction = -45.0;
    c = color(c1,c2,c3);
    Head head = new Head(x,y,r,c);
    frags.add(head);
    for(int i=0;i<len;i++){
      BodyFrag b = new BodyFrag(head,frags.getLast());
      frags.add(b); 
    }
  }

  void display(){
    for(SnakeFrag f:frags){
      f.display();
    }
  }
  
  void update(){
    SnakeFrag oldFirst = frags.getFirst();
    if (abs(oldFirst.x - mouseX) > 5 && abs(oldFirst.y - mouseY) > 5){
      direction = atan2(mouseY - oldFirst.y, mouseX - oldFirst.x);
    }
    frags.addFirst(new SnakeFrag(oldFirst.x + speed * cos(direction), oldFirst.y + speed * sin(direction),radius,c));
    frags.removeLast();
    x = frags.peek().x;
    y = frags.peek().y;
  }
}
