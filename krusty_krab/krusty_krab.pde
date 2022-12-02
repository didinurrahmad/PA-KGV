// * & spongebob
float x, y = 0;
PFont font;
float mx;
boolean hit = true;

// background
float maxHue = 70;

//bunga
float lingkaran = 0;
float circleX;
float xspeed = 3;

//mobil
float x1 = -250;
float y1 = 150;
float xs1 = 3;

// membuat object dari class Bubble
Bubble[] bubble = new Bubble[5];
Event[] ev = new Event[100];
Event event = new Event();

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
  
  for (int i = 0; i< ev.length; i++) {
    ev[i] = new Event();
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
  
  event.mousePressed1();

  comp.jalan();
  pushMatrix();
  translate(0, 0, 2);
  comp.tiang();
  popMatrix();

  pushMatrix();
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
  translate(0, 0, 50);

  comp.mobilGelembung();
  popMatrix();
  if (y > width+400) {
    y = 0;
  }
  pushMatrix();
  for (int i = 0; i< bubble.length; i++) {
    bubble[i].show();
    bubble[i].fall();
    //bubble[i].arround();
  }



  mousePressed();
  popMatrix();
  pushMatrix();

  translate(0, 0, 45);
  //comp.mobilGelembung();
  popMatrix();

  // rumput-rumput
  pushMatrix();
  fill(hijau);

  translate(-15, 10, 40);
  comp.rumput1();
  popMatrix();

  pushMatrix();
  fill(hijau_muda);

  translate(0, 5, 40);
  comp.rumput1();
  popMatrix();

  pushMatrix();
  fill(hijau);

  translate(15, 10, 40);
  comp.rumput1();
  popMatrix();

  // rumput-rumput depan
  pushMatrix();
  translate(700, 50, 10);
  pushMatrix();
  fill(hijau);

  translate(-15, 34, 40);
  comp.rumput1();
  popMatrix();

  pushMatrix();
  fill(hijau_muda);

  translate(0, 19, 40);
  comp.rumput1();
  popMatrix();

  pushMatrix();
  fill(hijau);

  translate(15, 10, 40);
  comp.rumput1();
  popMatrix();
  popMatrix();


  pushMatrix();
  translate(40, 30, 51);
  comp.baturumput();
  popMatrix();

  pushMatrix();
  translate(15, -92.5, 40);
  comp.baturumput1();
  popMatrix();
  //int x = mouseX;
  //int y = mouseY;
  //String mouse = str(x) + "," + str(y);

  //fill(0);
  //textSize(15);
  //text(mouse, mouseX, mouseY);
}
