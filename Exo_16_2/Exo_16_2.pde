
Voiture[] voitures = new Voiture[3];
Bande[] bandes = new Bande[10];



void setup() {
  size(400, 400);
  
 //voitures
 //float h = float(height) / voitures.length;
  for (int i = 0; i < voitures.length; i++) {
    voitures[i] = new Voiture(0, (i + 1) * height / (voitures.length + 1), random(1, 5), color(i * 2), 8);
  }
  
    //bandes
  for (int j = 0; j < bandes.length; j++) {
    bandes[j] = new Bande();
  }
}

void draw() {
  background(151);
  //voitures
  for (int i = 0; i < voitures.length; i++) {
    voitures[i].dessiner();
    voitures[i].bouger();
  }
    
    //bandes
     for (int j = 0; j < bandes.length; j++) {
    bandes[j].bouger();
    bandes[j].desactiver();
    for (int i = 0; i < voitures.length; i++) {
    bandes[j].activer(voitures[i].x, voitures[i].y);
    }
    bandes[j].dessiner();
    
  }
}


/**
Voiture voitures = new Voiture();
Bande[] bandes = new Bande[10];



void setup() {
  size(400, 400);
  
 //voitures
 //float h = float(height) / voitures.length;
    voitures = new Voiture(0, random(0,width), random(1, 5), color(0), 8);
  
  
    //bandes
  for (int j = 0; j < bandes.length; j++) {
    bandes[j] = new Bande();
  }
}

void draw() {
  background(151);
  //voitures
    voitures.dessiner();
    voitures.bouger();
    
    //bandes
     for (int j = 0; j < bandes.length; j++) {
    bandes[j].bouger();
    bandes[j].rollover(voitures.x, voitures.y);
    bandes[j].dessiner();
    
  }
}
*/
