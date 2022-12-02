class Event {

  float x3 = random(width);
  float y3 = random(-500, -50);
  float ys3 = random(2, 4);
  float z3 = random(5);
  float len3 = random(10, 15);

  void fall1() {
    y3 = y3 + ys3;
    if (y3 > height)
    {
      y3 = random(-500, -50);
    }
  }

  void show1() {
    strokeWeight(random(1, 2));
    stroke(255);
    line(x3, y3, x3, y3+len3);
  }

  void mousePressed1() {

    if (mousePressed && (mouseButton == LEFT)) {
      for (int i = 0; i< ev.length; i++) {
        ev[i].show1();
        ev[i].fall1();
        //bubble[i].arround();
      }
    } else if (mousePressed && (mouseButton == RIGHT)) {
      translate(0, 0, 10);
    }
  }
}
