import java.util.*;
ArrayList<Snake> snakes;
ArrayList<Food> snacks;

public void setup(){
  size(600,300);
  background(0);
  snakes = new ArrayList<Snake>();
  snacks = new ArrayList<Food>();
  for(int i=0;i<1;i++){
    PlayerSnake sn = new PlayerSnake();
    //PlayerSnake sn = new PlayerSnake((float)Math.random()*(width/2),(float)Math.random()*(height/2),50.0,20.0,255,(int)Math.random()*255,(int)Math.random()*255);
    snakes.add(sn);
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
  }
  for(Food f:snacks){
    f.display();
  }
}

void spawn(){

}
