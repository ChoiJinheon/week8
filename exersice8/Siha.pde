class Siha {
  Siha(float p, float q, float r) {
    x = p;      y = q;     d = r;
    vx = random(-3,3); vy = random(-3,3);
  }
  float x, y, d;
  float vx, vy;
  void Life() {
    fill(255,255,255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
  void act(){
    x += vx;  y += vy;
    if (x > width) vx = -vx;
    if (x < 0) vx = -vx;
    if (y > height) vy = -vy;
    if (y < 0) vy = -vy;
  }
  void collide(Siha b){
   float dd, vx1, vy1;
   vx1 = vx;
   vy1 = vy;
   dd = sqrt((x-b.x)*(x-b.x) + (y-b.y)*(y-b.y));
   if (dd < (d + b.d)/4){
     vx = b.vx;
     vy = b.vy;
     b.vx = vx1;
     b.vy = vy1;
   }
  }
}
