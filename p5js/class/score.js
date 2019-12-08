class Score {
    constructor(){
        this.numbers =[]
        this.numbersPos = [];
        this.score = undefined;
        this.scorePos = new Vector2d(260,20);
        this.scoreMaxPos = new Vector2d(410,55);

        this.loadImages()
        this.i = 0;
    }

    loadImages(){
        this.score =  loadImage("p5js/assets/score.png", img =>{
            return img;
        },);

        this.scoreMax =  loadImage("p5js/assets/scoreMax.png", img =>{
            return img;
        },);


       
    
        for (let i =0; i< 10;i++){
            this.numbers.push(loadImage("p5js/assets/"+str(i)+".png", img =>{
                return img;
            },));
            if (i < 7)
                this.numbersPos.push(new Vector2d(380 - 10*i,20));
            }
    }


    update(){

        image(this.score, this.scorePos.x, this.scorePos.y);

        if ( this.i  > 9999999 ){
            image(this.scoreMax,this.scoreMaxPos.x,this.scoreMaxPos.y);
            return;
        }
        
        let stringScore = str(this.i);

        for (let i =0 ;i < stringScore.length; i++)
            image(this.numbers[int(stringScore[i])],this.numbersPos[this.numbersPos.length- i -1].x,this.numbersPos[this.numbersPos.length-i -1].y );
        


    }
}