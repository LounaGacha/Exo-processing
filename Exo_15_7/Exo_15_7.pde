
int[] distrib = new int[21];

float somme = 0;
float moyenne = 0;
int eMax = 0;

void setup() {
  size(800, 500);

  String[] sNotes = loadStrings("notes.txt");


  int[] notes = int(sNotes);


  for (int i =0; i < notes.length; i++) {
    somme += notes[i];
    moyenne = somme / notes.length;
    distrib[notes[i]] ++;
    //eMax = max(distrib);

    eMax = distrib[0];
    for (int j = 0; j < distrib.length; j++) {
      if (distrib[j] > eMax) {
        eMax = distrib[j];
        
        
        
        
      }
    }
  }
}

void draw() {

  background(191);
  float w = float(width) / distrib.length;
  for (int z = 0; z < distrib.length; z++) {
    float m = map(distrib[z], 0, eMax, height, 0);
    stroke(0);
    fill(255);
    rect(z*w, m, w, height-m);



    println("moyenne note : ", moyenne);
    println(distrib);
    println(eMax);
  }
}


