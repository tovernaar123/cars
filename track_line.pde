class wall {
float x1 = 0;
float x2 = 0;
float y1 = 0;
float y2 = 0;

wall(float x1r, float y1r, float x2r, float y2r) {
x1 = x1r;
x2 = x2r;
y1 = y1r;
y2 = y2r;
  
}
void show() {
line(x1,y1,x2,y2);  
  
}
  
  
}
