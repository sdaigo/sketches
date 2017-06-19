class Particle {
    color col;
    float diameter;

    PVector location;   // location vector
    PVector velocity;   // speed vector

    Particle(float _diameter) {
        diameter = _diameter;
        location = new PVector(random(0, width), random(0, height));
        velocity = new PVector(random(-4, 4), random(-4, 4));
        col = color(random(255), random(255), random(255));
    }

    void draw() {
        fill(col);

        ellipse(location.x, location.y, diameter, diameter);

        // set next location
        location.add(velocity);

        if (location.x < 0 || location.x > width) {
            velocity.x = -velocity.x;
        }

        if (location.y < 0 || location.y > height) {
            velocity.y = -velocity.y;
        }
    }
}
