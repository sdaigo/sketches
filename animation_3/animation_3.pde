float diameter;
float hue;

void setup() {
    size(800, 600);
    frameRate(60);

    colorMode(HSB, 360, 100, 100, 100);
    noStroke();
}

void draw() {
    background(0);

    diameter = 200 + sin(frameCount * 0.1) * 100;
    hue = sin(frameCount * 0.1) * 120;

    fill(hue, 100, 100);

    ellipse(width / 2, height / 2, diameter, diameter);
}
