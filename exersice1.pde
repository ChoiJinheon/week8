Siha a, b, c;
void setup() {
  size(1000, 600);
  a = new Siha(100, 100, 100);
  b = new Siha(250, 150, 150);
  c = new Siha(400, 200, 200);
  a.Life();   b.Life();   c.Life();
}
class Siha {
  Siha() {   };
  Siha(float q, float r, float s) {
    x = width/2;     y = q;     d = r;     z = s;
  }
  float x, y, d, z;
  void Life() {
    ellipse(x, y, d, z);
    circle(x-d/5, y-d/6, d/5);
    arc(x+d/5, y-d/6, d/5, d/5, PI, 2*PI);
    arc(x, y, z, d/5, 0, PI);
  }
}

  
