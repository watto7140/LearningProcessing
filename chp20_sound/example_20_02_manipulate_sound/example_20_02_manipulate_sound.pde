// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 20-4: Manipulating sound (with Sonia)

import processing.sound.*;

// A Sample object (for a sound)
SoundFile song;

void setup() {
  size(200, 200);

  // Create a new sample object.
  song = new SoundFile(this, "dragon.wav");

  // Loop the sound forever
  // (well, at least until stop() is called)
  song.loop();
}

void draw() {
  //if (tone.isPlaying()) {
  background(255);
  //} else {
  //background(100);
  //}

  // Set the volume to a range between 0 and 1.0
  song.amp(map(mouseX, 0, width, 0, 1));

  // Set the rate to a range between 0.1 and 4
  // Changing the rate alters the pitch
  song.rate(map(mouseY, 0, height, 0, 2));

  // Draw some rectangles to show what is going on
  stroke(0);
  fill(51, 100);
  ellipse(mouseX, 100, 48, 48);
  stroke(0);
  fill(51, 100);
  ellipse(100, mouseY, 48, 48);
}

// Pressing the mouse stops and starts the sound
void mousePressed() {
  //if (tone.isPlaying()) {
  song.stop(); //   The sound can be stopped with the function stop().
  //} else {
  //tone.loop();
  //}
}

void keyPressed() {
  song.loop();
}
