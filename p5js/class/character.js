class Character {

    constructor(pos,image_path,life){

        this.pos = pos; //"p5js/assets/viking.png"
        
        this.life = life;
        
        this.image = loadImage(image_path, img => {
            return img;
        },)


    }

   


    update(){

        image(this.image,this.pos.x,this.pos.y);
        
    }
    

}
