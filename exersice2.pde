Siha a, b, c, d, e;
void setup() {
  size(600, 300);
  a = new Siha(50, 100, 100, 1);
  b = new Siha(150, 100, 100, 2);
  c = new Siha(250, 100, 100, 3);
  d = new Siha(350, 100, 100, 4);
  e = new Siha(450, 100, 100, 0);
  a.Life();   b.Life();    c.Life();    d.Life();    e.Life();
}
class Siha {
  Siha() {   };
  Siha(float p, float q, float r, int col) {
    x = p;      y = q;     d = r;
    cc = col;
  }
  float x, y, d;
  int cc; // colcor of face
  void Life() {
    if (cc == 0) fill(255, 255, 0); // yellow
    else if(cc == 1) fill(255); // white
    else if (cc == 2) fill(0,255,255); // cyan
    else if (cc == 3) fill(255, 0, 0);
    else if (cc == 4) fill(0, 0, 255);
    ellipse(x, y, d, d/3*2);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, d*2/3, d/5, 0, PI);
  }
}
