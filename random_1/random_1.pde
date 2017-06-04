int NUM = 50000;
float[] x = new float[NUM]; // coordinate x
float[] y = new float[NUM]; // coordinate y

void setup() {
    size(800, 600, P2D);
    frameRate(60);
    background(0);

    // initialize (x, y) with center point
    for (int i = 0; i < NUM; i++) {
        x[i] = width / 2.0;
        y[i] = height / 2.0;
    }
}

void draw() {
    fill(255, 5);
    noStroke();

    blendMode(ADD);

    for (int i = 0; i < NUM; i++) {
        ellipse(x[i], y[i], 1, 1);
        x[i] = x[i] + random(-3.0, 3.0);
        y[i] = y[i] + random(-3.0, 3.0);
    }

    blendMode(BLEND);
    fill(0, 5);
    noStroke();
    rect(0, 0, width, height);
}
