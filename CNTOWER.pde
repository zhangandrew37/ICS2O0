//https://canadaalive.files.wordpress.com/2013/07/toronto-skyline-night.jpg
//stars flashing
//comets falling

void settings() { 
  size(800, 600);    // set screen size to 800 in width by 600 in height
}

void draw() {
  background(255);
  //gradient background using for loop
  for (int gradient = 0; gradient<450; gradient++) {  //variable that starts at 0, loops +1 as long as it is less than 450
    stroke(gradient, 120, 255); //from pink to blue gradient
    line(0, gradient, width, gradient); //draws lines within loop (variable adds 1 each time)
  }

  //horizon
  stroke(0); //black
  strokeWeight(20); //20 weight
  line(0, 450, width, 450); //from left to right of screen

  //moon
  stroke(255); //reset stroke to white
  strokeWeight(1); //reset
  arc(650, 70, 20, 30, radians(270), radians(470));

  //CN Tower

  //observation deck
  //https://st2.depositphotos.com/4060975/11040/v/950/depositphotos_110401708-stock-illustration-cn-tower-vector-illustration.jpg
  //transparent (to-do)
  stroke(0);
  fill(#3E3946); //black-purple
  rect(211, 178, 28, 10); //top part
  rect(208, 185, 35, 10); //middle part
  fill(160, 16, 19); //red
  rect(211, 180, 28, 2); //red line
  stroke(#837877); //dark grey
  fill(#EBFCE8, 180); //white-green with a little transparency for a window effect
  ellipse(225, 198, 40, 10); //bottom part(glass)

  //base/foundation 
  fill(#BCB3B3); //light grey
  quad(205, 440, 245, 440, 230, 200, 220, 200); //left side of structure
  fill(90, 87, 103); //dark grey
  quad(228, 440, 245, 440, 230, 200, 225, 200); //right side of structure
  stroke(0); //black
  line(228, 440, 225, 200); //line in middle for 3D effect
  fill(#3E3946); //black-purple
  ellipse(225, 202, 30, 10); //very bottom of deck

  //skypod
  fill(#2A1646);//dark purple
  rect(220, 118, 10, 60); //top part
  fill(255, 180); //white with transparency 
  rect(220, 160, 10, 12); //bottom part
  rect(222, 100, 6, 20); //skypod
  fill(#2A1646);//dark purple
  rect(223, 80, 4, 20); //antenna
  rect(224, 60, 2, 20); //lightning rod

  //red lights
  stroke(250, 58, 61); //red
  strokeWeight(1.5); //stroke has a weight of 1
  //all the points of the lights
  fill(255);
  ellipse(225, 80, 3, 3);
  ellipse(225, 60, 3, 3);
  ellipse(230, 250, 3, 3);
  ellipse(232, 300, 3, 3);
  ellipse(234, 350, 3, 3);
  ellipse(236, 400, 3, 3);

  //all the buildings
  //tallest building
  fill(0,200); //black
  stroke(0); //black stroke outline
  quad(400,300,450,300,425,250,475,250);
  rect(400, 300, 50, 150); //outline
  stroke(206, 192, 65, 200); //yellow with transparency
  strokeWeight(2); //stroke of 3
  //for loop creates windows
  for(int windowY=305; windowY<430; windowY+=5){
  line(405, windowY, 445, windowY);
  }

  //resets fill to white, stroke to black, stroke weight to 1
  stroke(0);
  strokeWeight(1);
  fill(255);
}