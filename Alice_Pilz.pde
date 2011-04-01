
PImage alice;
PImage pilz;
PImage kopf;
 float skalierung =1.0;

void setup () {
  alice = loadImage ("Alice.png");
  pilz = loadImage ("Pilz.png");
  size(alice.width,  alice.height);
  kopf = loadImage ("AliceKopf.png");
}

void draw () {
  image(alice, 0,0);
  if (mouseX < pilz.width) {
    if (mouseX < pilz.width/2){
    skalierung = skalierung -0.01;
  } else {
    skalierung = skalierung +0.01;
  }
  }
  pushMatrix();
  translate(width/2-skalierung*kopf.width/2,
            kopf.height-skalierung*kopf.height);
  scale(skalierung);
  image(kopf, 0,0);
  popMatrix ();
  image(pilz, 0,height - pilz.height);
}
