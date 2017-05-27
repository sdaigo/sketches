size(800, 600);
background(0);
noStroke();

int NUM = 10000;
int DIAMETER = 5;

for ( int i = 0; i < NUM; i++ ) {
    float x = random(0, width);
    float y = random(0, height);

    // 画面中心からの距離
    float dist = dist(x, y, width / 2, height / 2);

    if ( dist < height / 4 ) {
        fill(63, 127, 255);
    }
    else if ( dist < height / 2 ) {
        fill(17, 184, 255);
    }
    else {
        fill(124, 212, 255);
    }

    ellipse(x, y, DIAMETER, DIAMETER);
}
