PImage foto;
float sise = 75;
float x, y = 0;
PFont font;
float mx;
boolean hit = true;
float maxHue = 70;
float lingkaran = 0;
float circleX;
float xspeed = 3;



Bubble[] bubble = new Bubble[5];

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
  //foto = loadImage("backroung.jpg");

  font = createFont("Krabby Patty.ttf", 32);
  textFont(font);
  for (int i = 0; i< bubble.length; i++) {
    bubble[i] = new Bubble();
  }
}

void draw() {

  //background(biru_muda);
  pushMatrix();
  translate(0, 0, -50);
  comp.background();
  popMatrix();

  comp.bunga2();

  circleX = circleX + xspeed;

  if (circleX > width) {
    xspeed = xspeed * -1.1;
  }
  if (circleX < 0) {
    xspeed = xspeed * 1.1;
  }
  //// bunga 1
  //stroke(pink);
  //comp.bunga();

  //// bunga 2
  //pushMatrix();
  //stroke(kuning);
  //scale(0.8);
  //translate(220, -120, -20);
  //rotate(radians(45));
  //comp.bunga();
  //popMatrix();

  //// bunga 3
  //pushMatrix();
  //stroke(hijau_muda);
  //scale(1.4);
  //translate(180, -21, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga 4
  //pushMatrix();
  //stroke(pink);
  //translate(430, -50, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga 5
  //pushMatrix();
  //stroke(kuning);
  //scale(1.7);
  //translate(420, -100, 0);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga 6
  //pushMatrix();
  //stroke(biru);
  //scale(0.8);
  //translate(670, 120, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga 7
  //pushMatrix();
  //stroke(kuning);
  //scale(0.8);
  //translate(120, 160, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga kecil 1
  //pushMatrix();
  //stroke(hijau_muda);
  //scale(0.5);
  //translate(width+370, 10, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga kecil 2
  //pushMatrix();
  //stroke(hijau);
  //scale(0.5);
  //translate(width+550, 450, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  //// bunga kecil 3
  //pushMatrix();
  //stroke(kuning);
  //scale(0.5);
  //translate(width-700, 500, -20);
  //rotate(radians(25));
  //comp.bunga();
  //popMatrix();

  mousePressed();

  comp.jalan();
  pushMatrix();
  translate(0, 0, 2);
  comp.tiang();
  popMatrix();

  pushMatrix();
  translate(21.5, 0, 50);
  comp.kerang();
  popMatrix();

  comp.gedung();

  pushMatrix();
  scale(0.9);
  translate(0, 45, 1);
  comp.spongebob();
  popMatrix();
  pushMatrix();
  translate(x-100, 0);
  if (x >= 200) {
    x = 1;
  }

  popMatrix();
  y = y + 3;
  x = x + 6;
  pushMatrix();
  translate(0, 0, 10);
  comp.mobilGelembung();
  popMatrix();
  if (y > width+400) {
    y = 0;
  }
  pushMatrix();
  for (int i = 0; i< bubble.length; i++) {
    bubble[i].show();
    bubble[i].fall();
  }
  popMatrix();

  //comp.mobil3D();

  int x = mouseX;
  int y = mouseY;
  String mouse = str(x) + "," + str(y);

  fill(0);
  textSize(15);
  text(mouse, mouseX, mouseY);
}
