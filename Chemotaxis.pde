ArrayList<Bacteria> colony;  // Use ArrayList for continous bacteria generation

void setup() {     
    size(500, 500);
    frameRate(10);

    colony = new ArrayList<Bacteria>(); // Initialize the list
}   

void draw() {    
    background(0);

    // Add a new bacterium every frame, to the left
    colony.add(new Bacteria());

    // Move and show all bacteria
    for (int i = 0; i < colony.size(); i++) {
        colony.get(i).walk();
        colony.get(i).show();
    }

    // Bubble pop effect, also limits the number of bacteria to prevent excessive memory usage
    if (colony.size() > 200) {  
        colony.remove(0);
    }
}  

class Bacteria {     
    int myX;
    int myY;
    int myColor;
    float mySpeed;
    int mySize;
  
    Bacteria() {
        myX = (int) random(-100, -20); // Start off-screen (left side)
        myY = (int) random(height);    // Random height position
        myColor = color(random(255), random(0), random(255)); // Random color
        mySize = (int)(Math.random()*80+20);
        mySpeed = mySize/50.0;
       
    }

    // Walk method (biased movement to the right)
    void walk() {
        myX = myX + (int)(Math.random() * 3) + 1; // Always move right (step size 1 to 3)
        myY = myY + (int)(Math.random() * 5) - 2; // Normal vertical movement


    }

    // Show method (draw the bacterium)
    void show() {
        noStroke();
        fill(myColor, 200);
        ellipse(myX, myY, mySize, mySize);
    }
}   
