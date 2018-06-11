import java.util.*;
ArrayList<Snake> snakes;
ArrayList<Food> snacks;
PlayerSnake me;

public void setup(){
  size(600,300);
  background(0);
  snakes = new ArrayList<Snake>();
  snacks = new ArrayList<Food>();
  for(int i=0;i<1;i++){
    me = new PlayerSnake();
    //PlayerSnake sn = new PlayerSnake((float)Math.random()*(width/2),(float)Math.random()*(height/2),50.0,20.0,255,(int)Math.random()*255,(int)Math.random()*255);
    snakes.add(me);
  }
  for(int i=0;i<30;i++){
    Food f = new Food();
    snacks.add(f);
  }
}

void draw(){
  background(0);
  for(Snake a:snakes){
    a.display();
    a.update();
    eatFood(a);
  }
  for(Food f:snacks){
    f.display();
    f.update();
  }
  moarFood();
}

void mousePressed(){
  me.boost();
}

void eatFood(Snake ss){
  Iterator looper = snacks.iterator();
  while(looper.hasNext()){
    Food f = (Food)looper.next();
    if(f.eaten){
      looper.remove();
    }
    for(Snake a:snakes){
      a.eat(f);
    }
  }
}

void moarFood(){
  if(snacks.size()<50){
    for(int i=0;i<50-snacks.size();i++){
      Food f = new Food();
      snacks.add(f);
    }
  }
}
