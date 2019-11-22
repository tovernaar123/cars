class car {
PVector pos = new PVector(width/2,height/2);  
PVector speed = new PVector(0,0);
PVector acc = new PVector(0,0);
//PVector dir = PVector.fromAngle(PI);
float force = 10;
float w = 100;
float h = 20;  



void show() {
pushMatrix();
translate(pos.x,pos.y);
rotate(speed.heading());
fill(255);
rectMode(CENTER);
rect(0,0,w,h);  
popMatrix();  
}
void Rotate(float x) {
  


float angle  = radians(x);
PVector steer = PVector.fromAngle(angle);
steer.setMag(4);
steer.sub(speed);
acc.add(steer);
update();
}
void update() {
pos.add(speed);  
speed.add(acc);
acc.set(0,0);
  
}
  
  
  
}
