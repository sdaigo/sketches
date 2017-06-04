float angle = 0.0;

void setup() {
    size(800, 600);
    frameRate(60);
    noFill();
    stroke(0, 127, 255);
}

void draw() {
    background(0);

    pushMatrix();
    translate(width / 4, height / 4);
    rotate(angle);
    rectMode(CENTER);
    rect(0, 0, 100, 100);
    popMatrix();

    pushMatrix();
    translate(width / 2, height / 2);
    rotate(angle);
    rectMode(CENTER);
    rect(0, 0, 50, 50);
    popMatrix();

    angle += 0.1;
}
