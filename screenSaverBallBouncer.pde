float circleSize = 50;
float x, y, r, g, b, a;
boolean down = true;
boolean right = true;
float moveSpeed = 10;

void setup() {
  size(800, 600);
  background(0);
  x = random(width);
  y = random(height);
}

void draw() {

  if (x + (circleSize / 2) > width) {
    right = false;
  } else if ( x - (circleSize / 2) < 0) {
    right = true;
  }
  if (y + (circleSize / 2) > height) {
    down = false;
  } else if (y - (circleSize / 2) < 0 ) {
    down = true;
  }
  if (down) {
    y = y + random(moveSpeed);
  } else {
    y = y - random(moveSpeed);
  }
  if (right) {
    x = x + random(moveSpeed);
  } else {
    x = x - random(moveSpeed);
  }


  r = random(150);
  g = random(255);
  b = random(255);
  a = random(20, 100);

  noStroke();
  fill(r, g, b, a);
  circle(x, y, circleSize);
}

void mousePressed() {
  background(0);
}
