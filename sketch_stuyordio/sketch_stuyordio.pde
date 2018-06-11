import java.util.*;
ArrayList<Snake> s;
public void setup(){
  size(600,300);
  background(0);
  s = new ArrayList<Snake>();
  for(int i=0;i<10;i++){
    Snake sn = new Snake((float)Math.random()*(width/2),(float)Math.random()*(height/2),50.0,20.0,255,(int)Math.random()*255,(int)Math.random()*255);
    s.add(sn);
  }
}

void draw(){
  background(0);
  for(Snake a:s){
    a.display();
    a.update();
  }
}

void spawn(){

}
