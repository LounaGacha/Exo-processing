ArrayList<Cercle> cercles = new ArrayList();

void setup() {
  size(400, 400);
}

void draw() {
  background(100);
  for (int i = 0; i < cercles.size(); i++) {
    Cercle c = cercles.get(i);
    c.dessiner();
  }
}

void mousePressed() {
  if (mouseButton == LEFT) {
    // TODO: ajouter un cercle à la position de la souris
    //circle(mouseX,mouseY,30);
    cercles.add(new Cercle(mouseX, mouseY, 10, color(random(256), random(256), random(256))));
  } else if (mouseButton == RIGHT) {
    // TODO: supprimer les cercles sur lesquels on a cliqué
    int i = 0;
    while ( i < cercles.size()) {
      if (cercles.get(i).estDedans(mouseX, mouseY) == true) {
        cercles.remove(i);
      } else {
        i++;
      }
    }
  }
}
