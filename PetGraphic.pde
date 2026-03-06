// OPTION A: Use Processing graphics
//   - Write your drawing code inside drawPetGraphic()
//   - You can make multiple versions (happy, sad, etc.)
//     and call the right one based on pet state
//
// OPTION B: Use images (PImage)
//   - Add image files to your sketch's /data folder
//   - Load them in loadPetImages() below
//   - Add them to the petImages ArrayList
//   - Display the right one in drawPetGraphic()
// =============================================


// =============================================
// OPTION B SETUP  (comment out if using Option A)
// =============================================

// ArrayList<PImage> petImages;   // one image per mood/state

// void loadPetImages() {
//   petImages = new ArrayList<PImage>();
//   petImages.add(loadImage("neutral.png"));  // index 0 - neutral
//   petImages.add(loadImage("happy.png"));    // index 1 - happy
//   petImages.add(loadImage("sad.png"));      // index 2 - sad
//   // add more as needed!
// }
//
// Call loadPetImages() at the end of setup() in VirtualPet.pde


// =============================================
// Pet area background + border
// (shared by both options - leave this)
// =============================================

void drawPetArea() {
  // Background for the pet zone
  fill(#FF74E8);
  stroke(180, 160, 220);
  strokeWeight(2);
  rect(20, 20, 380, 390, 16);

  // Draw whichever graphic option you're using
  drawPetGraphic();
}


// =============================================
// OPTION A: Drawing with Processing shapes
// Replace or add to the placeholder below!
// =============================================

void drawPetGraphic() {

  // ---- Placeholder shape ----
  // Replace this with your own drawing,
  // or swap it for an image (see Option B below).

  // Body
  fill(#DEC196);
  noStroke();
  ellipse(210, 220, 120, 160);

  // Head
  fill(#E3CDAC);
  ellipse(210, 145, 100, 90);

  // Eyes
  fill(50);
  ellipse(190, 138, 14, 14);
  ellipse(230, 138, 14, 14);

  // Eye shine
  fill(255);
  ellipse(195, 134, 5, 5);
  ellipse(235, 134, 5, 5);

  // Nose
  fill(0);
  triangle(210, 165, 200, 155, 220, 155);

  // Mouth
  fill(0);
  stroke(80);
  strokeWeight(2);
  arc(197, 162, 24, 30, 0, PI);
  arc(223, 162, 24, 30, 0, PI);

  // Ears
  fill(0);
  noStroke();
  triangle(145, 108, 168, 75, 195, 100);
  triangle(275, 108, 252, 75, 225, 100);

  // Inner ears
  fill(0);
  triangle(180, 105, 172, 82, 193, 100);
  triangle(240, 105, 248, 82, 227, 100);
  
  // Back Feet
  fill(#DEC196);
  ellipse(165, 280, 50, 30);
  ellipse(255, 280, 50, 30);
  
  // Front Feet
  fill(#E3CDAC);
  ellipse(180, 270, 50, 30);
  ellipse(240, 270, 50, 30);
  
  // Nails
  fill(0);
  ellipse(180, 280, 10, 10);
  ellipse(165, 275, 10, 10);
  ellipse(195, 275, 10, 10);
  ellipse(225, 275, 10, 10);
  ellipse(240, 280, 10, 10);
  ellipse(255, 275, 10, 10);
  
  // Tail
  
  // Draw swirl tail on pet
  drawTail(266, 240);  // adjust X/Y to place on "butt"
}

// Swirl tail made from small ellipses
void drawTail(float tailX, float tailY) {
  float radius = 5;
  float angle = 0;

  fill(#E3CDAC);
  noStroke();

  for (int i = 0; i < 17; i++) {
    float x = tailX + cos(angle) * radius;
    float y = tailY + sin(angle) * radius;
    ellipse(x, y, 8, 8);  // small circle
    angle += 0.62;          // how tight the curl is
    radius += 1.5;           // how far outward each circle is
  }
}
  

  // ---- END placeholder ----


  // =============================================
  // OPTION B: Display a PImage instead
  // Uncomment and adjust once images are loaded.
  // =============================================

  // Choose which image based on pet state:
  // int index = 0; // neutral default
  // if (myPet.getEnergyLevel() >= 5 && myPet.getHappinessLevel() >= 5) {
  //   index = 1; // happy
  // } else if (myPet.getHappinessLevel() == 0) {
  //   index = 2; // sad
  // }
  // image(petImages.get(index), 60, 60, 300, 300);
