size(800, 500);

String[] sNotes = loadStrings("notes.txt");
int[] distrib = new int[21];

int[] notes = int(sNotes);
int somme = 0;
float moyenne = 0;
int eMax =0;

for (int i =0; i < notes.length; i++) {
  somme += notes[i];
  moyenne = somme / notes.length;
  for (int j =0; j < 21; j++) {
    if (notes[i] == j) {
      distrib[j] += 1;
   
    }
  }
}


println("moyenne note : ", moyenne);
println(distrib);
println(eMax);
