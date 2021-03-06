import java.util.*;
public class Snake{
  LinkedList<SnakeFrag> frags;
  float len, radius, speed,x,y,direction;
  color c;
  String name;
  
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
      BodyFrag b = new BodyFrag(this,frags.getLast());
      frags.add(b); 
    }
    name="Snake";
  }

  void display(){
    for(SnakeFrag f:frags){
      f.display();
    }
    textAlign(TOP,CENTER);
    textSize(12);
    text(name,frags.getFirst().x+10,frags.getLast().y+10);
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
    boost();
  }
  
  void boost(){
    if(mousePressed){
      while(len>10){
        speed=speed*2;
        frags.removeLast();
      }
    }   
  }
  
  void eat(Food f){
    if(f.eaten==true){
      return;
    }
    if(dist(frags.getFirst().x,frags.getFirst().y,f.x,f.y)<f.size*2){
      f.eaten=true;
      frags.add(new BodyFrag(this,frags.getLast()));
    }
  }
}
