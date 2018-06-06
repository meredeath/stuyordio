import java.util.*;
public class Snake{
  private LinkedList<SnakeFrag> frags;
  int length, radius;
  color c;
  
  public Snake(){
    frags = new LinkedList<SnakeFrag>();
    for(int i=0;i<10;i++){
      frags.add(new SnakeFrag());
    }
  }
  
  public Snake(int len, int r, int c1, int c2, int c3){
    frags = new LinkedList<SnakeFrag>();
    length=len;
    radius=r;
    c = new color(c1,c2,c3);
    for(int i=0;i<len;i++){
      frags.add(new SnakeFrag(r,c));
    }
  }
  
  void display(){
    for(int i=0;i<length;i++){
      frags.get(i).display();
    }
  }
}
