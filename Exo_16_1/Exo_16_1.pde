Voiture[] voitures = new Voiture[500];

void setup() {
  //size(400, 400);
  fullScreen();
  float h = float(height) / voitures.length;
  for (int i = 0; i < voitures.length; i++) {
    voitures[i] = new Voiture(0, i * h, random(1, 5), color(random(256),random(256),random(256)), 75* h);
  }
}

void draw() {
  background(0);
  for (int i = 0; i < voitures.length; i++) {
    voitures[i].dessiner();
    voitures[i].bouger();
  }
}
