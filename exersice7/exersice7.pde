Siha [] aa;
punleu [] pp;
angrybird [] bb;
void setup() {
  size(600, 600);
  pp = new punleu[5];
  for (int j = 0; j < 5; j ++) {
    pp[j] = new punleu(random(width), random(height));
  }
}
void draw(){
  background(0,255,255);
  for (int i = 0; i<5; i++){
    pp[i].update();
    pp[i].punleuShow();
  }
}
