float strength = 1400.0;
int step = 6;
float noiseScale = 0.002;

void setup( ) {
    size(800, 600);
    noLoop();
}

void draw( ) {
    background(255);
    stroke(191);
    noFill();

    for(int i = -height * 2; i < height * 2; i += step) {
        beginShape();
        for(int j = -width / 2; j < width * 1.5; j += step) {
            float noise = noise(j * noiseScale, i * noiseScale) * strength;
            curveVertex(j, i + noise + (j * 0.5));
        }
        endShape();
    }
}
