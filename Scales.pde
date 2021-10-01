void setup() {
  size(500, 500);  
  noLoop();
}
void draw() {
  for(int x = 30; x <= 480; x+=40)
    for(int y = 20; y <= 500; y+=60)
      scaleProject(x,y);
}

void scaleProject(int x, int y) {
fill((int)(Math.random()*156),(int)(Math.random()*156),35);
beginShape();
vertex(x, y);
bezierVertex(x-20, y+10, x-20, y+30, x, y+50);
bezierVertex(x+20, y+30, x+20, y+10, x, y);
endShape();
line(x,y,x,y+50);
noFill();
line(x-15,y+25,x+15,y+25);
}
