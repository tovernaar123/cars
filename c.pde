class partical {
PVector pos = new PVector(0,0);  
ray r[] = new ray[4];

partical() {
  float dir = 360/r.length;
for(int i =0; i < r.length; i++) {
r[i] = new ray(pos,radians(dir*i));  
  
}

}
void update() {

pos.set(mouseX,mouseY);  
  
}

void show() {
for(int i =0; i < r.length; i++) { 
PVector pt = r[i].look(w);  
if(pt != null) {
  
  
}
}
}
  
}
