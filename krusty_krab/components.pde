class Components {

  void baturumput() {
    //batu
    fill(94, 34, 147);
    pointLight(205, 170, 237, 680, 378, 90);
    beginShape();
    curveVertex(600, 450);
    curveVertex(600, 450);

    curveVertex(630, 400);

    curveVertex(750, 300);

    curveVertex(750, 450);
    curveVertex(750, 450);
    endShape(CLOSE);
  }

  void baturumput1() {
    //batu
    pushMatrix();
    fill(94, 34, 147);
    pointLight(205, 170, 237, 0, 400, 90);
    beginShape();
    curveVertex(0, 450);
    curveVertex(0, 450);

    curveVertex(10, 420);

    curveVertex(40, 420);

    curveVertex(50, 450);
    curveVertex(50, 450);
    endShape(CLOSE);

    fill(150, 90, 200);
    beginShape();
    curveVertex(-25, 450);
    curveVertex(-25, 450);

    curveVertex(-25, 400);
    curveVertex(5, 425);

    curveVertex(20, 450);
    curveVertex(20, 450);
    endShape(CLOSE);
    popMatrix();
  }

  void rumput1() {
    beginShape();
    curveVertex(0, 330);
    curveVertex(0, 330);

    curveVertex(4, 320);
    curveVertex(0, 310);
    curveVertex(6, 300);
    curveVertex(2, 290);

    curveVertex(10, 250);
    curveVertex(10, 250);

    curveVertex(14, 290);
    curveVertex(18, 300);
    curveVertex(12, 310);
    curveVertex(16, 320);

    curveVertex(20, 330);
    curveVertex(20, 330);
    endShape(CLOSE);
  }
  void mobilGelembung() {
    x1 = x1 + xs1;
    if (x1 > 750)
    {
      x1 = random(-350, -250);
      y1 = random(150, 200);
      xs1 = random(0.5, 5);
    }
    println(x1);
    // Mobil Gelembung 1
    pushMatrix();

    stroke(255);
    strokeWeight(1);
    translate(x1, y1, -1); // translate ini berguna untuk merubah posisi dari nilai y = 0 ++ 5

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
  }



  void bunga2() {
    // bunga 1
    stroke(pink);
    comp.bunga();

    // bunga 2
    pushMatrix();
    stroke(kuning);
    scale(0.8);
    translate(circleX+90, -120, -20);
    rotate(radians(45));
    comp.bunga();
    popMatrix();

    // bunga 3
    pushMatrix();
    stroke(hijau_muda);
    scale(1.4);
    translate(circleX-90, -10, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga 4
    pushMatrix();
    stroke(pink);
    translate(430, -50, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga 5
    pushMatrix();
    stroke(kuning);
    scale(1.7);
    translate(420, -100, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga 6
    pushMatrix();
    stroke(biru);
    scale(0.8);
    translate(670, 95, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga 7
    pushMatrix();
    stroke(kuning);
    scale(0.8);
    translate(220, 160, -50);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga kecil 1
    pushMatrix();
    stroke(hijau_muda);
    scale(0.5);
    translate(width+370, 10, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga kecil 2
    pushMatrix();
    stroke(hijau);
    scale(0.5);
    translate(width+550, 450, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();

    // bunga kecil 3
    pushMatrix();
    stroke(kuning);
    scale(0.5);
    translate(width-700, 500, -20);
    rotate(radians(25));
    comp.bunga();
    popMatrix();
  }

  void bunga() {
    pushMatrix();
    circleX = 0;
    rotate(lingkaran);
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
    lingkaran += 0.0002;
  }
  void kerang() {
    // kerang tiang
    pushMatrix();

    fill(#DEDEDE);
    translate(-24, -85, 1);
    beginShape();
    stroke(#023CCB);
    strokeWeight(1);
    curveVertex(200, 300);
    curveVertex(200, 300);

    curveVertex(160, 250);
    curveVertex(161, 235);
    curveVertex(170, 236);

    curveVertex(172, 220);
    curveVertex(185, 219);


    curveVertex(195, 205);
    curveVertex(210, 210);
    curveVertex(225, 205);


    curveVertex(235, 219);
    curveVertex(248, 220);

    curveVertex(250, 236);
    curveVertex(259, 235);
    curveVertex(260, 250);

    curveVertex(220, 300);
    curveVertex(220, 300);
    endShape();
    popMatrix();

    pushMatrix();
    translate(0, 0, 1);
    fill(#CB0202);
    textSize(13);
    text("THE", 172, 148);
    textSize(20);
    text("Krusty", 154, 165);
    text("Krab", 163, 188);

    popMatrix();
  }

  void gedung() {
    //Gedung Crusty Crab
    pushMatrix();
    translate(-30, 0);
    noStroke();

    //Dinding
    fill(#423d32);
    arc(300, 350, 80, 300, PI, TWO_PI);  //dinding kiri
    fill(#312713);
    arc(320, 350, 80, 300, PI, 6.34);  //dinding kiri

    // pintu
    fill(#46A4FF);
    rect(290, 304.1, 260, 70);
    stroke(100);
    line(385, 310, 385, 375);
    fill(kuning);
    noStroke();
    rect(375, 330, 5, 15);
    rect(391, 330, 5, 15);

    pushMatrix();
    noStroke();
    //strokeWeight(1);
    fill(#462B1B);
    rect(344, 304.1, 10, 70);
    fill(#4D301E);
    rect(414, 304.1, 10, 60);
    fill(#462B1B);
    rect(354, 300, 70, 10);
    popMatrix();


    // Dinding tengah
    noStroke();
    fill(#3E2E0C);
    quad(510, 213, 320, 213, 308, 231, 510, 231);
    stroke(#342A14);
    strokeWeight(2);
    quad(358, 213, 320, 213, 308, 231, 346, 231);
    noStroke();

    quad(510, 231, 308, 231, 302, 249, 510, 249);
    stroke(#342A14);
    strokeWeight(2);
    quad(400, 231, 308, 231, 302, 249, 394, 249);
    noStroke();
    quad(500, 249, 302, 249, 298, 267, 500, 267);
    quad(500, 267, 298, 267, 295.5, 285, 500, 285);
    stroke(#342A14);
    strokeWeight(2);

    quad(378, 267, 298, 267, 295.5, 285, 375, 285);
    noStroke();
    quad(490, 285, 295.5, 285, 293.5, 303, 490, 303);

    strokeWeight(3);
    stroke(255);
    point(347, 218);
    point(342, 226);
    point(390, 236);
    point(388, 243);
    point(369, 272);
    point(368, 279);

    // Dinding samping
    pushMatrix();
    translate(25, 2);
    noStroke();
    fill(#423d32);
    arc(487, 350, 80, 300, PI, TWO_PI);  //dinding kanan
    fill(#312713);
    arc(507, 350.5, 80, 300, PI, 6.32);  //dinding kanan
    fill(#211A0A);
    arc(507, 350.5, 50, 250, PI, 6.31);  //dinding kanan
    fill(100);
    arc(502, 350.5, 40, 240, PI, 6.31);  //dinding kanan
    popMatrix();

    // Pondasi bawah
    fill(#67623c);
    // kiri
    pushMatrix();
    translate(304, 360, -10);
    box(95, 29, -20);
    popMatrix();
    // kanan
    pushMatrix();
    translate(457, 360, -10);
    box(97, 29, -20);
    popMatrix();

    fill(#423d32);
    quad(573, 355, 505, 345, 505, 375, 573, 376);
    //quad(353, 353, 345, 350, 345, 376, 353, 373);
    popMatrix();
  }

  void bendera() {
    // bendera
    stroke(0);
    line(267, 271, 448, 271);
    fill(#FFF2F2);
    noStroke();
    translate(5, 10, 1);
    // bendera merah
    fill(#FFF940);
    rect(270, 261, 27, 20);
    fill(#FF4047);
    rect(270, 261, 10, 8);
    pushMatrix();
    translate(17, 0);
    rect(270, 261, 10, 8);
    translate(0, 12);
    rect(270, 261, 10, 8);
    translate(-17, 0);
    rect(270, 261, 10, 8);
    popMatrix();

    fill(#ECED41);// bendera kuning
    rect(305, 261, 27, 20);
    fill(#080808);
    ellipse(319, 270, 15, 15);

    fill(#036DFF);//bendera biru
    rect(340, 261, 27, 20);
    fill(#C4C4C4);
    triangle(341, 280, 366, 260, 366, 280);

    fill(#C4C4C4);//bendera abumerah
    rect(376, 261, 27, 20);
    fill(#FF4047);
    rect(376, 261, 12, 10);
    pushMatrix();
    translate(14, 10);
    rect(376, 261, 13, 10);
    popMatrix();

    // bendera kuning biru
    fill(#FFF940);
    rect(410, 260, 27, 20);
    fill(#036DFF);
    rect(422, 260, 15, 20);

    //cerobong asap
    pushMatrix();
    translate(-50, -14);
    fill(#C4C4C4);
    pushMatrix();
    translate(390,203,0);
    box(25, 34, -50);
    popMatrix();
    stroke(#838383);
    line(455, 218, 455, 187);

    line(428, 178, 455, 185);
    ellipse(428, 178, 5, 5);
    line(455, 185, 478, 178);
    ellipse(478, 178, 5, 5);
    line(455, 187, 478, 198);
    ellipse(478, 198, 5, 5);
    line(428, 198, 452, 187);
    ellipse(428, 198, 5, 5);
    line(455, 187, 455, 165);
    ellipse(455, 165, 5, 5);
    fill(#838383);
    ellipse(455, 187, 8, 8);
    noStroke();
    popMatrix();
  }

  void jalan() {
    // Jalanan
    translate(0, 0, -50);
    noStroke();
    fill(255);

    fill(#a0b698);
    rect(-300, 370, width+400, 130); //dasar laut ( pasir )
    fill(#BCD8BF);
    rect(-300, 370, width+400, 10);
    fill(#4f6e72);
    rect(-300, 400, width+400, 100);
    quad(395, 380, 335, 380, 260, 400, 355, 400);
    ellipse(375, 380, 400, 20);
  }

  void tiang() {
    // Tiang
    ellipse(185, 391, 20, 5);
    stroke(#9B958C);
    strokeWeight(5);
    line(185, 387, 186, 218);
    ellipse(186, 217, 20, 5);
    ellipse(185, 389, 5, 0.5);
  }
  void spongebob() {
    colorMode(RGB, 255);
    if (hit == true) {
      // body
      fill(255, 243, 0); // yellow
      rect(mx - 25, 300, 50, 60);

      // holes
      fill(211, 200, 77);
      ellipse(mx - 18, 336, 7, 7);
      ellipse(mx + 15, 342, 5, 5);
      ellipse(mx - 20, 323, 5, 5);
      ellipse(mx + 21, 333, 5, 5);
      ellipse(mx + 20, 308, 7, 7);
      ellipse(mx - 20, 305, 5, 4);

      // left eye
      line(mx - 12, 306, mx - 12, 312);
      line(mx - 18, 307, mx - 15, 312);
      line(mx - 5, 307, mx - 9, 312);
      strokeWeight(1);
      fill(255);
      ellipse(mx - 10, 317, 17, 17);
      fill(100, 255, 100);
      ellipse(mx - 9, 317, 7, 7);
      fill(0);
      ellipse(mx - 9, 317, 2, 2);

      // right eye
      line(mx + 12, 306, mx + 12, 312);
      line(mx + 18, 307, mx + 15, 312);
      line(mx + 5, 307, mx + 9, 312);
      strokeWeight(1);
      fill(255);
      ellipse(mx + 10, 317, 17, 17);
      fill(100, 255, 100);
      ellipse(mx + 9, 317, 7, 7);
      fill(0);
      ellipse(mx + 9, 317, 2, 2);

      //smile
      noFill();
      arc(mx, 330, 30, 10, 0, PI);

      // teeth
      fill(255);
      rect(mx - 5, 335, 5, 5);
      rect(mx + 2, 335, 5, 5);

      //nose
      fill(255, 243, 0); // yellow
      ellipse(mx - 7, 327, 18, 5);
      noStroke();
      ellipse(mx + 1, 328, 6, 6);
      stroke(0);

      fill(157, 86, 27); // brown
      rect(mx - 25, 349, 50, 11);

      fill(0); // black
      rect(mx - 20, 351, 10, 2);
      rect(mx - 5, 351, 10, 2);
      rect(mx + 10, 351, 10, 2);


      fill(255); // white
      rect(mx - 25, 343, 50, 6);
      triangle(mx - 18, 343, mx - 3, 343, mx - 8, 347);
      triangle(mx + 18, 343, mx + 3, 343, mx + 8, 347);

      // left arm
      fill(255);
      triangle(mx - 25, 338, mx - 25, 350, mx - 30, 350);
      fill(255, 243, 0);
      rect(mx - 28, 350, 3, 12);
      ellipse(mx - 26, 360, 3, 8);

      // right arm
      fill(255);
      triangle(mx + 25, 338, mx + 25, 350, mx + 30, 350);
      fill(255, 243, 0);
      rect(mx + 25, 350, 3, 12);
      ellipse(mx + 27, 360, 3, 8);

      // tie
      fill(255, 0, 0); // red
      quad(mx, 345, mx - 4, 355, mx, 360, mx + 4, 355);
      quad(mx - 3, 343, mx + 3, 343, mx + 2, 348, mx - 2, 348);

      // left leg
      fill(157, 86, 27); // brown
      rect(mx - 15, 360, 10, 5);
      fill(255, 243, 0);
      rect(mx - 12, 365, 4, 13);
      fill(0);
      ellipse(mx - 13, 380, 10, 5);

      // right leg
      fill(157, 86, 27); // brown
      rect(mx + 5, 360, 10, 5);
      fill(255, 243, 0);
      rect(mx + 8, 365, 4, 13);
      fill(0);
      ellipse(mx + 13, 380, 10, 5);
    } else {
      // body
      fill(255, 243, 0); // yellow
      rect(mx - 25, 300, 50, 60);

      // holes
      fill(211, 200, 77);
      ellipse(mx - 18, 336, 7, 7);
      ellipse(mx + 15, 342, 5, 5);
      ellipse(mx - 20, 323, 5, 5);
      ellipse(mx + 21, 333, 5, 5);
      ellipse(mx + 20, 308, 7, 7);
      ellipse(mx - 20, 305, 5, 4);

      // left eye
      line(mx - 12, 306, mx - 12, 312);
      line(mx - 18, 307, mx - 15, 312);
      line(mx - 5, 307, mx - 9, 312);
      strokeWeight(1);
      fill(255);
      ellipse(mx - 10, 317, 17, 17);
      fill(100, 255, 100);
      ellipse(mx - 9, 317, 7, 7);
      fill(0);
      ellipse(mx - 9, 317, 2, 2);

      // right eye
      line(mx + 12, 306, mx + 12, 312);
      line(mx + 18, 307, mx + 15, 312);
      line(mx + 5, 307, mx + 9, 312);
      strokeWeight(1);
      fill(255);
      ellipse(mx + 10, 317, 17, 17);
      fill(100, 255, 100);
      ellipse(mx + 9, 317, 7, 7);
      fill(0);
      ellipse(mx + 9, 317, 2, 2);

      //smile
      line(mx - 15, 335, mx + 15, 335);

      // teeth
      fill(255);
      rect(mx - 5, 335, 5, 5);
      rect(mx + 2, 335, 5, 5);

      //nose
      fill(255, 243, 0); // yellow
      ellipse(mx - 7, 327, 18, 5);
      noStroke();
      ellipse(mx + 1, 328, 6, 6);
      stroke(0);

      fill(157, 86, 27); // brown
      rect(mx - 25, 349, 50, 11);

      fill(0); // black
      rect(mx - 20, 351, 10, 2);
      rect(mx - 5, 351, 10, 2);
      rect(mx + 10, 351, 10, 2);

      fill(255); // white
      rect(mx - 25, 343, 50, 6);
      triangle(mx - 18, 343, mx - 3, 343, mx - 8, 347);
      triangle(mx + 18, 343, mx + 3, 343, mx + 8, 347);

      // left arm
      fill(255);
      triangle(mx - 25, 338, mx - 25, 350, mx - 30, 350);
      fill(255, 243, 0);
      rect(mx - 28, 350, 3, 12);
      ellipse(mx - 26, 360, 3, 8);

      // right arm
      fill(255);
      triangle(mx + 25, 338, mx + 25, 350, mx + 30, 350);
      fill(255, 243, 0);
      rect(mx + 25, 350, 3, 12);
      ellipse(mx + 27, 360, 3, 8);

      // tie
      fill(255, 0, 0); // red
      quad(mx, 345, mx - 4, 355, mx, 360, mx + 4, 355);
      quad(mx - 3, 343, mx + 3, 343, mx + 2, 348, mx - 2, 348);

      // left leg
      fill(157, 86, 27); // brown
      rect(mx - 15, 360, 10, 5);
      fill(255, 243, 0);
      rect(mx - 12, 365, 4, 13);
      fill(0);
      ellipse(mx - 13, 380, 10, 5);

      // right leg
      fill(157, 86, 27); // brown
      rect(mx + 5, 360, 10, 5);
      fill(255, 243, 0);
      rect(mx + 8, 365, 4, 13);
      fill(0);
      ellipse(mx + 13, 380, 10, 5);
    }
    mx = constrain(mouseX, 240, 590);
  }
  void background() {
    pushMatrix();
    colorMode(HSB, 360, 100, 100);
    noStroke();
    float skyHue = maxHue;
    skyHue = map(mouseX, 0, width, 200, 240);
    for (var rectY = 0; rectY < 700; rectY += 10) {
      fill(skyHue, 90, map(mouseX, 0, width, 100, 35));
      rect(-100, rectY-100, width+200, 300);
      skyHue++;
    }
    float diameter = height + 100;
    float S = map(mouseX, 0, width, 45, 10);
    float mouseangle = map(mouseX, 0, width, PI, TWO_PI);
    float d1 = 10 + (sin(mouseangle) * diameter / 2) + diameter / 2;
    pushMatrix();
    fill(0, S, 200, 100);
    translate(0, 0, 150);
    ellipse(mouseX, d1 - 100, 100, 100);
    popMatrix();
    popMatrix();
  }
}
