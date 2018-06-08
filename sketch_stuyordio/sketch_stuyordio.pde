import java.util.*;
Snake a = null;  
SnakeFrag b = new SnakeFrag();
ArrayList<Snake> s;
public void setup(){
  size(600,300);
  smooth();
  background(0);
  noStroke();
  //Random r = new Random();
  s = new ArrayList<Snake>();
  for(int i=0;i<10;i++){
  Snake sn = new Snake((float)Math.random()*(width/2),(float)Math.random()*(height/2),1.0,1.5,10.0,20.0,255,(int)Math.random()*255,(int)Math.random()*255);
  s.add(sn);
  }
  //a.display();
  //b.display();
}
void draw(){
  //if(a!=null){
    //a.update();
  //}
  //a.update();
  background(0);
  for(Snake snaake:s){
  snaake.display();
  snaake.update();
  }
  //b.checkWalls();
}

void spawn(){

}