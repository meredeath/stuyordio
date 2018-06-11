import java.util.*;
ArrayList<Snake> snakes;
ArrayList<Food> snacks;
PlayerSnake me;

public void setup(){
  size(1000,780);
  background(0);
  snakes = new ArrayList<Snake>();
  snacks = new ArrayList<Food>();
  me = new PlayerSnake();
  snakes.add(me);
  for(int i=0;i<15;i++){
    snakes.add(new AISnake());
  }
  for(int i=0;i<150;i++){
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
  if(snacks.size()<150){
    for(int i=0;i<150-snacks.size();i++){
      Food f = new Food();
      snacks.add(f);
    }
  }
}
