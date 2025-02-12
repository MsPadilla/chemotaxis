Bacteria [] colony;


 void setup()   
 {     
 size(500,500);
frameRate(10);
//bob = new Bacteria;
//suzy = new Bacteria;

colony = new Bacteria[100];

for (int i=0; i<colony.length;i++){
colony[i] = new Bacteria();
}

   //initialize bacteria variables here   
 }   
 void draw()   
 {    
//move and show the bacteria
background(0);
for (int i=0; i<colony.length;i++){
//colony[i] = new Bacteria();
colony[i].walk();
colony[i].show();
}
//bob.walk();
//bob.show();
//suz.walk();
//suz.show();

 }  
 class Bacteria    
 {     
  int myX;
int myY;
int myColor;
float mySpeed;
int mySize;
  
Bacteria(){
  myX = (int)(Math.random()*500);
  myY = (int)(Math.random()*500);
  mySize = (int)(Math.random()*80+20);
  mySpeed = mySize/100.0;
  myColor = color((int)(Math.random()*256)) ;

  //myColor = color(255,0,0);

}
   //lots of java!  
// walk method
void walk (){
myX = myX + (int)(Math.random()*3)+1;
myY = myY + (int)(Math.random()*3)-1; 
}

// show method
void show(){
noStroke();
fill(myColor, 200);
ellipse(myX, myY, mySize, mySize);
}


 }   
