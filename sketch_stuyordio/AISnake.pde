public class AISnake extends Snake{
  public AISnake(){
    frags = new LinkedList<SnakeFrag>();
    len=random(50);
    radius=random(50);
    x=random(width);
    y=random(height);
    speed=2.5;
    direction = -45.0;
    c = color(random(256),random(256),random(256));
    Head head = new Head(x,y,radius,c);
    frags.add(head);
    for(int i=0;i<len;i++){
      BodyFrag b = new BodyFrag(this,frags.getLast());
      frags.add(b); 
    }
    name="Crappy AI Snake # "+int(random(500));
  }
  
  void update(){
    if(x+speed>width-radius||x+speed<radius){
      speed*=-1;
    }else if(y+speed>height-radius||y+speed<radius){
      speed*=-1;
    }
    SnakeFrag oldFirst = frags.getFirst();
    direction = random(-TWO_PI,TWO_PI);
    frags.addFirst(new SnakeFrag(oldFirst.x + speed * cos(direction), oldFirst.y + speed * sin(direction),radius,c));
    frags.removeLast();
    x = frags.peek().x;
    y = frags.peek().y;
    boost();
  }
}
