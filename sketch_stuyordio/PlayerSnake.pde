public class PlayerSnake extends Snake{
  
    public PlayerSnake(){
    frags = new LinkedList<SnakeFrag>();
    len=10.0;
    radius=10.0;
    x=random(width/2);
    y=random(height/2);
    speed=2.5;
    direction = -45.0;
    c = color(random(256),random(256),random(256));
    Head head = new Head(x,y,radius,c);
    frags.add(head);
    for(int i=0;i<len;i++){
      BodyFrag b = new BodyFrag(this,frags.getLast());
      frags.add(b); 
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
    boost();
  }
}
