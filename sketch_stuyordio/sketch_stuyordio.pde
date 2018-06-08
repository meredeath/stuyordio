import java.util.*;
Snake a = null;  SnakeFrag b = new SnakeFrag();
//ArrayList<Snake> s;
public void setup(){
  size(600,300);
  smooth();
  background(0);
  noStroke();
  Random r = new Random();
  //s = new ArrayList<>();
  a = new Snake(r.nextFloat(),r.nextFloat(),2.0,2.5,10.0,20.0,255,0,255);
  a.display();
  b.display();
}
void draw(){
  //if(a!=null){
    //a.update();
  //}
  //a.update();
  background(0);
  b.display();
  b.update();
  b.checkWalls();
}

void spawn(){

}
