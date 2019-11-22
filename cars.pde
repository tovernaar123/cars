ray r;
public wall w[] = new wall[2];
PVector pos = new PVector(width/2, height/2);
void setup() {
fullScreen();  
background(0);
pos = new PVector(width/2, height/2);
r = new ray(pos, radians(360));
w[0] = new wall(1200,300,1400,900);
w[1] = new wall(1000,200,1200,800); 
}


void draw() {
background(0);
r.show(); 
w[0].show();
w[1].show();
PVector pt  = r.look(w);
if(pt != null) {
strokeWeight(10);
point(pt.x,pt.y);
strokeWeight(1);
}
r.lookAT(mouseX,mouseY);
}

void mousePressed() {
pos.set(mouseX,mouseY);  
  
}
