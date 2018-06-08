import java.util.*;
public class Snake{
  private LinkedList<SnakeFrag> frags;
  float len, radius, x,y,xspeed, yspeed;
  color c;
  
  public Snake(){
    frags = new LinkedList<SnakeFrag>();
    for(int i=0;i<10;i++){
      frags.add(new SnakeFrag(200,i*10));
    }
  }
  
  public Snake(float _x,float _y,float xs,float ys,float len, float r, int c1, int c2, int c3){
    frags = new LinkedList<SnakeFrag>();
    this.len=len;
    radius=r;
    x=_x;
    y=_y;
    xspeed=xs;
    yspeed=ys;
    c = color(c1,c2,c3);
    SnakeFrag head = new SnakeFrag(x,y,xspeed,yspeed,r,c);
    frags.add(head);
    for(int i=0;i<len;i++){
      frags.add(new SnakeFrag(frags.get(i).getX()-5,frags.get(i).getY()-5,xspeed,yspeed,r,c));
    }
  }
  
  void display(){
    //println(frags);
    for(SnakeFrag f:frags){
      f.display();
    }
  }

  void update(){
    SnakeFrag oldhead = frags.getFirst();
    frags.addFirst(new SnakeFrag(frags.peek().getX()+xspeed,frags.peek().getY()+yspeed,xspeed,yspeed,radius,c));
    frags.removeLast();
    //frags.push(new SnakeFrag(frags.peek().getX()+xspeed,frags.peek().getY()+yspeed,xspeed,yspeed,radius,c));
    x = frags.peek().x;
    y = frags.peek().y;
    for(SnakeFrag f:frags){
      f.update();
    }
    this.display();
  }
  
}
