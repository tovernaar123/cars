public float ray_dist = 600;
class ray {
PVector pos = new PVector();
//float x = 0;
//float y = 0;
PVector dir;

ray(PVector posa,float angle) {
pos = posa;
dir = PVector.fromAngle(angle);

}
void lookAT(float x1,float y1) {
dir.x = x1 - pos.x;  
dir.y = y1 - pos.y;  
dir.normalize();
}
void show() {
stroke(255); 
pushMatrix();
translate(pos.x,pos.y);
line(0,0,dir.x*100,dir.y*100);  
popMatrix(); 
}

PVector look(wall b) {
PVector result = new PVector(0,0); //<>// //<>//
float x1 = b.x1;   //<>//
float x2 = b.x2;
float y1 = b.y1;
float y2 = b.y2;

float x3 = pos.x;
float y3 = pos.y;
float x4 = pos.x + dir.x;
float y4 = pos.y + dir.y;


float divider = (x1-x2)*(y3-y4)-(y1-y2)*(x3-x4);
if(divider == 0) {

return null;  
  
}
float t =  ((x1-x3)*(y3-y4) - (y1-y3)*(x3-x4))/divider;
float u = -((x1-x2)*(y1-y3) - (y1-y2)*(x1-x3))/divider;
if(t > 0 && t < 1 && u > 0) {
textSize(100);
text("hit",100,100);
result.x  = x1 + t * (x2-x1);
result.y  = y1 + t * (y2-y1);
return result;
}else {
return null; 
  
}
}
 
PVector look(wall[] w) {
PVector result = null; 
float record = 0;
int f = 0;
for(int i =0; i < w.length; i++) {
PVector pt = this.look(w[i]);
if(pt != null) {
record = PVector.dist(pt,pos);
result = pt;
f = i;
break;
}

}
for(int i = f; i < w.length; i++) { 
PVector pt = this.look(w[i]);
if(pt != null) {
float d = PVector.dist(pt,pos);  
if(d < record) {
record = d;  
result = pt;  
}
}
}
return result;  
}
  
  
  
  
}
