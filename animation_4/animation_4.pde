float angle = 0.0; // rotate radian

void setup() {
    size(800, 600);
    frameRate(60);
    noFill();
    stroke(0, 127, 255);
}

void draw() {
    background(0);
    rectMode(CENTER);

    // change origin of canvas
    translate(width / 2, height / 2);
    rotate(angle);
    rect(0, 0, 200, 200);

    angle += cos(frameCount * 0.001);
}
