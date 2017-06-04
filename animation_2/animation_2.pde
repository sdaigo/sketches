int locationX;
int direction;

void setup() {
    size(800, 600);
    frameRate(60);
    fill(0, 127, 255);
    noStroke();

    locationX = 0;
    direction = -1;
}

void draw() {
    background(0);
    ellipse(locationX, height/2, 20, 20);

    // update positions
    locationX += direction * 10;

    if (locationX < 0 || locationX > width) {
        direction *= -1;
    }
}
