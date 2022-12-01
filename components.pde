class Components {
  
  
  void mobilGelembung() {
    // Mobil Gelembung 1
    pushMatrix();

    stroke(255);
    strokeWeight(1);
    translate(y-200, height/2-2 * sise/2); // translate ini berguna untuk merubah posisi dari nilai y = 0 ++ 5

    fill(#6FFFD0, 90);
    ellipse(138, 265, 25, 25);
    ellipse(193, 265, 25, 25);
    noStroke();

    fill(#F944FA, 100);
    ellipse(160, 220, 90, 90);

    stroke(255);
    strokeWeight(1);

    fill(150, 90);
    ellipse(160, 220, 100, 100);

    fill(#6FFFD0);
    ellipse(130, 270, 25, 25);
    ellipse(185, 270, 25, 25);
    fill(255);
    noStroke();
    ellipse(190, 220, 20, 50);
    popMatrix();

    // jika y mencapai nilai = 1000 maka y akan kembali ke nilai 0 maka objek akan balik ke titik 0
  }

  void mobilGelembung2() {

    //mobil gelembung 2
    pushMatrix();
    stroke(255);
    strokeWeight(1);
    translate(y-400, height/2-1 * sise/2);

    fill(#6FFFD0, 90);
    ellipse(138, 265, 25, 25);
    ellipse(193, 265, 25, 25);
    noStroke();

    fill(#3E02CB, 100);
    ellipse(160, 220, 90, 90);

    stroke(255);
    strokeWeight(1);

    fill(150, 90);
    ellipse(160, 220, 100, 100);

    fill(#6FFFD0);
    ellipse(130, 270, 25, 25);
    ellipse(185, 270, 25, 25);
    fill(255);
    noStroke();
    ellipse(190, 220, 20, 50);
    popMatrix();
  }

  void mousePressed() {
    if (mousePressed && (mouseButton == LEFT)) {
      tint(255, 0, 0);
    } else if (mousePressed && (mouseButton == RIGHT)) {
      noTint();
    }
  }

  void backgron() {
    image(foto, 0, 0, 750, 370);
  }

  void bunga() {
    pushMatrix();
    scale(0.6);

    translate(-60, -170, -20);
    beginShape();

    //stroke(255);
    noFill();
    strokeWeight(5);
    curveVertex(200, 400);
    curveVertex(200, 400);

    curveVertex(170, 380);
    curveVertex(190, 308);

    //curveVertex(182, 300);
    curveVertex(172, 300);

    curveVertex(150, 350);
    curveVertex(100, 355);
    curveVertex(100, 320);
    //curveVertex(160, 295);

    curveVertex(163, 285);
    //curveVertex(160, 278);
    curveVertex(110, 278);
    curveVertex(100, 250);
    curveVertex(130, 238);
    //curveVertex(163, 270);
    curveVertex(175, 270);
    curveVertex(184, 260);

    curveVertex(170, 220);
    curveVertex(210, 210);
    curveVertex(230, 240);
    curveVertex(198, 270);

    //curveVertex(200, 280);

    curveVertex(210, 285);
    curveVertex(280, 285);
    curveVertex(290, 320);
    curveVertex(260, 330);

    //vertex(230, 300);
    curveVertex(205, 298);
    //curveVertex(200, 300);

    //curveVertex(200, 310);
    curveVertex(230, 380);

    curveVertex(200, 400);
    curveVertex(200, 400);
    endShape();

    ellipse(185, 283, 10, 10);
    popMatrix();
  }
  
}
