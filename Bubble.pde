class Bubble {

  //  Bubble bb = new Bubble();
  float x = random(width);
  float y = random(500, 50);
  float ys = random(0.5, 2);
  void fall() {
    y = y - ys;
    if (y < -200)
    {
      y = random(500, 50);
    }
  }

  void show() {
    bb1();
    bb2();
  }

  void bb1() {
    translate(0, 0, 10);
    pushMatrix();
    translate(x, y);
    scale(0.3);
    strokeWeight(1);
    noStroke();

    fill(#3E02CB, 100);
    ellipse(160, 220, 90, 90);

    fill(biru_muda, 100);
    ellipse(160, 220, 100, 100);
    noStroke();
    fill(putih, 100);
    ellipse(190, 220, 20, 50);
    popMatrix();
  }

  void bb2() {
    translate(0, 0, 10);
    pushMatrix();
    translate(x+100, y+50);
    scale(0.2);
    strokeWeight(1);
    noStroke();

    fill(#3E02CB, 100);
    ellipse(160, 220, 90, 90);

    fill(biru_muda, 100);
    ellipse(160, 220, 100, 100);
    noStroke();
    fill(putih, 100);
    ellipse(190, 220, 20, 50);
    popMatrix();
  }
}
