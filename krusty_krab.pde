PImage foto;
float sise = 75;
float x, y;
PFont font;

//inisialisasi variabel warna
color pink = color (255, 49, 183);
color biru_muda = color (49, 212, 255);
color biru = color (0, 143, 180);
color hijau = color (2, 160, 50);
color hijau_muda = color (64, 255, 123);
color hitam = color (0, 0, 0);
color kuning = color (222, 227, 0);
color kuning_muda = color (252, 255, 77);
color putih = color (255, 255, 255);

Components comp = new Components();
void setup() {
  size(750, 450, P3D);
  foto = loadImage("backroung.jpg");

  font = createFont("Krabby Patty.ttf", 32);
  textFont(font);
}

void draw() {
  y = y + 3;
  x = x + 4;

  //pointLight(255, 255, 255, 0, 0, 100);
  //backgron();
  background(biru_muda);
  // bunga 1
  stroke(pink);
  comp.bunga();

  // bunga 2
  pushMatrix();
  stroke(kuning);
  scale(0.8);
  translate(220, -120, -20);
  rotate(radians(45));
  comp.bunga();
  popMatrix();

  // bunga 3
  pushMatrix();
  stroke(hijau_muda);
  scale(1.4);
  translate(180, -10, -20);
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
  translate(670, 120, -20);
  rotate(radians(25));
  comp.bunga();
  popMatrix();

  // bunga 7
  pushMatrix();
  stroke(kuning);
  scale(0.8);
  translate(120, 160, -20);
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

  mousePressed();
  // Jalanan
  noStroke();
  fill(255);

  fill(#a0b698);
  rect(0, 370, 750, 130); //dasar laut ( pasir )
  fill(#BCD8BF);
  rect(0, 370, 750, 10);
  fill(#4f6e72);
  rect(0, 400, 750, 50);
  quad(395, 380, 335, 380, 260, 400, 355, 400);
  ellipse(375, 380, 400, 20);

  // Tiang
  ellipse(185, 391, 20, 5);
  stroke(#9B958C);
  strokeWeight(5);
  line(185, 387, 186, 218);
  ellipse(186, 217, 20, 5);
  ellipse(185, 389, 5, 0.5);

  // kerang tiang
  pushMatrix();
  fill(#DEDEDE);
  translate(-24, -85);
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
  fill(#CB0202);
  textSize(13);
  text("THE", 172, 148);
  textSize(20);
  text("Krusty", 154, 165);
  text("Krab", 163, 188);

  popMatrix();

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

  //rect(353, 302, 100, 70);
  rect(290, 304.1, 260, 70);
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

  // Bangunan krusty krab
  // Pondasi bawah
  fill(#67623c);
  rect(250, 350, 95, 26); // kiri
  rect(410, 350, 95, 26); // kanan

  fill(#423d32);
  quad(570, 355, 505, 350, 505, 376, 570, 376);
  quad(353, 353, 345, 350, 345, 376, 353, 373);
  popMatrix();
  pushMatrix();
  translate(x-100, 0);
  if (x >= 200) {
    x = 1;
  }


  popMatrix();
  comp.mobilGelembung();

  if (y > width+100) {
    y = 0;
    //mobilGelembung2();
  }

  int x = mouseX;
  int y = mouseY;
  String mouse = str(x) + "," + str(y);

  fill(0);
  textSize(15);
  text(mouse, mouseX, mouseY);
}
