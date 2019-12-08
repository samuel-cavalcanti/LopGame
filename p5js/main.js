function setup(){
  
  game = new Game();
  const width = 800;
  const height = 450;

  createCanvas(width, height);
 
}

function draw(){

    game.update();
  

}


function keyReleased(){

    // game.heroControl()
}

function keyPressed(){
    game.heroControl()
}