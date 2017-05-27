size(800, 600);
colorMode(HSB, 360, 100, 100, 100);
background(0);
noStroke();

float diameter;
float hue, saturation, brightness, alpha;
color col;

int NUM = 12;

hue = 200;
saturation = 100;
brightness = 20;
alpha = 90;
diameter = width / NUM * 2;

for ( int i = 0; i < NUM; i++ ) {
    col = color(hue, saturation, brightness, alpha);
    fill(col);

    float x = width / NUM * i + diameter / 4;
    ellipse(x, height / 2, diameter, diameter);

    brightness += 100 / NUM;
}
