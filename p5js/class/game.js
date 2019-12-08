class Game {

    constructor (){
        this.startScene = undefined; //p5js/assets/NEW_GAME.png
        this.endScene = undefined; //p5js/assets/GAME_OVER.png
        this.betaScene = undefined; //p5js/assets/beta3.jpg
        this.title = undefined; //p5js/assets/title.png 
        this.hero = undefined; //"p5js/assets/viking.png"
        this.crows = [] //"p5js/assets/crow.png"
        this.ugabugas = [] //"p5js/assets/ugabuga.png
        this.numbers = [] 

        this.startHeroPos = new Vector2d(100,300);
        this.startUgabugaPos = new Vector2d(900,290);
        this.startCrowPos = new Vector2d(510,235);

        this.score = new Score();

        
          //
       

        this.newGame = true;
        this.endGame = false;
        this.resetedPos = true;
        this.loadCharacters();
        this.loadScenes();

        

   

  

    }


    start(){

        image(this.startScene,0,0,this.startScene.width, this.startScene.height);
       
        image(this.title,25,5);
        
    }

    update(){
        if (this.newGame && ! this.endGame){
            this.start();
            if (key == "Enter"){
                this.newGame = false;
            }
        }
        else if (!this.endGame){
           this.isGoing()

            
        }else{

            this.end();

            if (key == "Backspace"){
                this.endGame = false;
                this.newGame = true;

            }


        }


    }

    isGoing(){
        image(this.betaScene,0,0);

        this.updateCharacters();

        this.score.update();



    }

    end(){
        image(this.endScene,0,0);
        this.resetPos()
        
    }


    loadScenes(){
        this.startScene = loadImage("p5js/assets/NEW_GAME.png", img =>{
            return img;
    },);

  
        this.endScene =  loadImage("p5js/assets/GAME_OVER.png", img =>{
            return img;
    },);

        this.betaScene =  loadImage("p5js/assets/beta3.jpg", img =>{
            return img;
    },);

        this.title =  loadImage("p5js/assets/title.png", img =>{
            return img;
    },);

 
   


    }

    loadCharacters(){
        this.hero = new Character(this.startHeroPos,"p5js/assets/viking.png",8);

        for (let i = 0; i< 5; i++){
            this.ugabugas.push(new Character(this.startUgabugaPos,"p5js/assets/ugabuga.png",3))

            if ( i < 3){
                this.crows.push(new Character(this.startCrowPos,"p5js/assets/crow.png",1))
            }

        }

    }

    resetPos(){
        if ( this.resetPos)
            return;

        this.hero.pos = this.startHeroPos;

        for (let i =0 ; i < this.ugabugas.length; i++){

            this.ugabugas[i].pos = this.startUgabugaPos;

            if (i < 3){
                this.crows[i].pos = this.startCrowPos;
            }
        }
    }

    updateCharacters(){
        this.hero.update()

        for (let i = 0; i< this.ugabugas.length; i++){
            this.ugabugas[i].update()

            if ( i < 3){
                this.crows[i].update()

            }

        }
    }

    heroControl(){

        switch (key){
            case "ArrowRight":
                    this.hero.pos.x += 5;
                    break;
            case "ArrowLeft":
                    this.hero.pos.x -=5;
                    break;
            case "ArrowUp":
                    this.hero.pos.y -=5;
                    break;
            case "ArrowDown":
                this.hero.pos.y +=5;
                break;
            
        }
        
    }
}
