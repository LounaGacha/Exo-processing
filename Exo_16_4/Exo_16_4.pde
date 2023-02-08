
/*
//16_3
Snake leader;
Snake[] followers = new Snake[10];

void setup() {
  size(800, 800);
  leader = new Snake(50, color(255, 0, 0), 0, 0, 0);
  for (int i = 0; i < followers.length; i++) {
    followers[i] = new Snake(int(random(20, 80)),
      color(random(255), random(255), random(255)), random(2, 10),
      random(width), random(height));
  }
}

void draw() {
  background(0);
  leader.deplacer(mouseX, mouseY);
  leader.dessiner();

  followers[0].avancerVers(leader.getXQueue(), leader.getYQueue());
  followers[1].avancerVers(followers[0].getXQueue(), followers[0].getYQueue());
  for (int i = 1; i < followers.length; i++) {
    followers[i].avancerVers(followers[i-1].getXQueue(), followers[i-1].getYQueue());
    followers[i].dessiner();
  }
}
**/

//16_4
Snake leader;
Snake[] followers = new Snake[10];

void setup() {
  size(800, 800);
  leader = new Snake(50, color(255, 0, 0), 0, 0, 0);
  for (int i = 0; i < followers.length; i++) {
    followers[i] = new Snake(int(random(20, 80)),
      color(random(255), random(255), random(255)), random(2, 10),
      random(width), random(height));
  }
}

void draw() {
  background(0);
  leader.deplacer(mouseX, mouseY);
  leader.dessiner();

  followers[0].avancerVers(followers[followers.length-1].getXQueue(), followers[followers.length-1].getYQueue());
  for (int i = 1; i < followers.length; i++) {
    followers[i].avancerVers(followers[i-1].getXQueue(), followers[i-1].getYQueue());
    followers[i].dessiner();
  }
}
