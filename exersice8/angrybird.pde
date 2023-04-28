class angrybird {
  // constructor
  angrybird(float a, float b, float s){
    x = a;
    y = b;
    z = s;
    vx = random(-3,3);
    vy = random(-2,2);
  }
  // member data
  float x, y, z, vx, vy;
  // member function
  void update(){
    x += vx;
    y += vy;
    if(x<0 || x > width) vx = -vx;
    if(y<0 || y > width) vy = -vy;
  }
  void angrybirdShow() {
      fill(255,0,0);
      strokeWeight(2);
      ellipse(x-z/7.5,y-z/2+z/75,z/3,z/7.5);
      ellipse(x-z/30,y-z/2+z/75,z/7.5,z/3);
  
      fill(0,0,0);
      quad(x-z/2-z/7.5,y-z/15, x-z/2-z/7.5,y+z/30, x-z/2+z/50, y+z/50, x-z/2+z/30, y-z/18.75);
      quad(x-z/1.875,y-z/6.52, x-z/2.14,y-z/18.75, x-z/2,y-z/50, x-z/1.76, y-z/8.33);
      quad(x-z/1.76,y+z/11.5, x-z/2,y-z/50, x-z/2.14,y+z/50, x-z/1.875, y+z/8.33);
  
      fill(255,0,0);
      circle(x,y,z);
      strokeWeight(1);
  
      fill(255,255,255);
      circle(x+z/15,y,z/4);
      circle(x+z/3.2,y,z/4);
  
      fill(0);
      circle(x+z/10,y,z/10);
      circle(x+z/3.4,y,z/10);
  
      fill(255,255,0);
      triangle(x+z/30,y+z/5,x+z/2.7,y+z/4.6,x+z/5.35,y+z/18.75);
      triangle(x+z/30,y+z/5,x+z/3.33,y+z/4.68,x+z/5.35,y+z/3.33);
  
      fill(0,0,0);
      quad(x-z/25,y-z/4, x+z/4.7,y-z/10, x+z/5.55,y-z/30, x-z/11.5,y-z/6);
      quad(x+z/6,y-z/10, x+z/2.2,y-z/4.05, x+z/2,y-z/6, x+z/5,y-z/30);
  }
  
}
