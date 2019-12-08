PImage Ufgraminha; //<>//
PImage NomedoJogo;
PImage Newgame;
PImage gameOver;
PImage oriva;
PImage Score;
PImage ScoreMax;
PImage[] Energia; 
PImage[] Vida;
PImage[] corvo;
PImage[] Tiro;
PImage[] Numeros;
PImage[] Ugabuga;
PImage[] caquinhadeCorvo;
  boolean esquerda;
  boolean direita;
  boolean subir;
  boolean descer;
  boolean pular;
  boolean limite;
  boolean cairDopulo;
  boolean Disparo;
  boolean[] Nao_me_siga_bala;
  boolean[] Cu_preso;
  boolean Tiro1;
  boolean Tiro2;
  boolean Tiro3;
  boolean comecoJogo;
  boolean fimJogo;
    float pos_oriva_X;
    float pos_oriva_Y;
    float variacaoDopulo;
    float a; // Variavel a e b, serve para testar as coisas, geralmente eu tiro e declaro outra variavel pra ficar mais facil de enteder.
    float b;  
    float []pos_ugabuga_X;
    float []pos_ugabuga_Y;
    float []pos_corvo1_X;
    float []pos_corvo1_Y;
    float []pos_tiro_X;
    float []pos_tiro_Y;
    float []pos_caquinha_Y;
    float []pos_caquinha_X;
    float maxValor;
    float tempoAleatorio;
    int[] vidaBugabuga;
    int i;
    int j;
    int n;
    int unidade;
    int dezena;
    int centena;
    int unidade_de_milhar;
    int dezena_de_milhar;
    int centena_de_milhar;
    int unidade_de_milhao;
    int vida_do_Corvo;
    int numeros_Vida;
    int Dificuldade;
  
    



                                                      void setup()
{
               /*          void setup   ==   informações que inicializarão com o o jogo  */
  
  
              //vetores
Nao_me_siga_bala = new boolean [3]; 
Cu_preso = new boolean [3];
pos_corvo1_X = new float[3];
pos_corvo1_Y = new float[3];
pos_tiro_X = new float[3];
pos_tiro_Y = new float[3];
pos_ugabuga_X= new float [5];
pos_ugabuga_Y= new float [5];
vidaBugabuga = new int [5];
pos_caquinha_X = new float [3];
pos_caquinha_Y = new float [3];
corvo= new PImage[3];
Energia = new PImage[4];
Vida = new PImage[9];
Tiro= new PImage[3];
Ugabuga = new PImage[5];
Numeros= new PImage[10];
caquinhadeCorvo = new PImage[3];
Vida[1]= loadImage("vida1.png");
Vida[2]= loadImage("vida2.png");
Vida[3]= loadImage("vida3.png");
Vida[4]= loadImage("vida4.png");
Vida[5]= loadImage("vida5.png");
Vida[6]= loadImage("vida6.png");
Vida[7]= loadImage("vida7.png");
Vida[8]= loadImage("vida8.png");
Energia[0]=loadImage("Energia.png");
Energia[1]=loadImage("Energia1.png");
Energia[2]=loadImage("Energia2.png");
Energia[3]=loadImage("Energia3.png");
Numeros[0]=loadImage("0.png");
Numeros[1]=loadImage("1.png");
Numeros[2]=loadImage("2.png");
Numeros[3]=loadImage("3.png");
Numeros[4]=loadImage("4.png");
Numeros[5]=loadImage("5.png");
Numeros[6]=loadImage("6.png");
Numeros[7]=loadImage("7.png");
Numeros[8]=loadImage("8.png");
Numeros[9]=loadImage("9.png");

 for(i=0;i<3;i++)
  { 
    pos_corvo1_X[i]=510;
    pos_corvo1_Y[i]=235;
    corvo[i] = loadImage("corvodemoniacosatanista666.png");
    Tiro[i] = loadImage("Tiro do orivaldo.png");
    caquinhadeCorvo[i] = loadImage("Caquinha de corvo.png");
  }
  for(i=0;i<5;i++)
  {
    Ugabuga[i]= loadImage("ugabuga.png");
    pos_ugabuga_X[i] = 900;
    pos_ugabuga_Y[i] = 290;
    vidaBugabuga[i] = 0;
  }





                      //Imagens/cenario
  size(800, 450);
Ufgraminha = loadImage("beta3.jpg");
oriva = loadImage("viking.png");
Score = loadImage("Score.png");
ScoreMax = loadImage("ScoreMAX.png");
Newgame = loadImage("NEW_GAME.png");
gameOver = loadImage("GAME_OVER.png"); 
NomedoJogo = loadImage("title.png");


                     // variaveis booleanas 
pular=false;
limite=true;
cairDopulo=false;
Disparo = false; 
Tiro1=false;
Tiro2=false;
Tiro3=false;
comecoJogo= true;
fimJogo = false;



for(i=0;i<3;i++)
{
  Nao_me_siga_bala[i]= false;
  Cu_preso[i]= true;
}

                    // constantes 
a=0;
j=0;
vida_do_Corvo=2;
numeros_Vida=0;
pos_oriva_X = 100;
pos_oriva_Y = 300;
variacaoDopulo=0;
maxValor=500;
tempoAleatorio=500;
unidade=0;
dezena=0;
centena=0;
unidade_de_milhar=0;
dezena_de_milhar=0;
centena_de_milhar=0;
unidade_de_milhao=0;
Dificuldade = 0;
}


                                                      void draw()
                                               //informações que sempre estaram atualizando 
{
  if(fimJogo)
    {
      image(gameOver,0,0);
      a=0;
      j=0;
      vida_do_Corvo=2;
      numeros_Vida=0;
      pos_oriva_X = 100;
      pos_oriva_Y = 300;
      variacaoDopulo=0;
      maxValor=500;
      tempoAleatorio=500;
      unidade=0;
      dezena=0;
      centena=0;
      unidade_de_milhar=0;
      dezena_de_milhar=0;
      centena_de_milhar=0;
      unidade_de_milhao=0;
      
      for(i=0;i<3;i++)
  { 
    pos_corvo1_X[i]=510;
    pos_corvo1_Y[i]=235;
    corvo[i] = loadImage("corvodemoniacosatanista666.png");
    Tiro[i] = loadImage("Tiro do orivaldo.png");
    caquinhadeCorvo[i] = loadImage("Caquinha de corvo.png");
    pos_tiro_X[i] = 1500;
    pos_caquinha_Y[i] = 500;
  }
  for(i=0;i<5;i++)
  {
    Ugabuga[i]= loadImage("ugabuga.png");
    pos_ugabuga_X[i] = 900;
    pos_ugabuga_Y[i] = 290;
    vidaBugabuga[i] = 0;
  }

    }
  
  
  
  
  if(comecoJogo && !fimJogo)
    {
      image(Newgame,0,0);
      image(NomedoJogo,25,5);
    }
    
    
  
  
  
  if(!comecoJogo)
  {
    
image(Ufgraminha ,0,0);
image(oriva ,pos_oriva_X,pos_oriva_Y+variacaoDopulo);
      for(int i=0;i<3;i++)
        {
          image(corvo[i], pos_corvo1_X[i],pos_corvo1_Y[i]);
          image(Tiro[i],pos_tiro_X[i],pos_tiro_Y[i]);
        }
        
// 340 , 290
for(i=0;i<5;i++)
{
  image(Ugabuga[i],pos_ugabuga_X[i],pos_ugabuga_Y[i] + (int)random(0,50));
  pos_ugabuga_X[i] -=(int)random(1,7 +int(Dificuldade/10));
  
  if(pos_ugabuga_X[i]<-10)
  pos_ugabuga_X[i] = 800;
  
  if(pos_oriva_X+53 >= pos_ugabuga_X[i]+59 && pos_oriva_X <= pos_ugabuga_X[i]+124)
  {
  pos_ugabuga_X[i] = 800;
  numeros_Vida++;
  }
  
                                       //Colisão ugabuga com tiro
  
  for(n=0;n<3;n++)
    {
          if(pos_ugabuga_X[i]+59<=pos_tiro_X[n]+30 && pos_ugabuga_X[i] + 124 >=pos_tiro_X[n]+23 && pos_ugabuga_Y[i]+97>=pos_tiro_Y[n]+56 && pos_ugabuga_Y[i]+7<= pos_tiro_Y[n]+64)
          { 
            vidaBugabuga[i]++;
            pos_ugabuga_X[i] +=200;
            pos_tiro_X[n]= 850 +(Dificuldade/1000);
          }
          
          if(vidaBugabuga[i]>=3+int(Dificuldade/300))
            {
              unidade++;
              pos_ugabuga_X[i] =900;
              vidaBugabuga[i]=0;
            }
  
    }
    
      
}
  
  
  
  
  // o disparo do orivaldo
  
 
  
    if(!Nao_me_siga_bala[0])
    {
      pos_tiro_X[0] = pos_oriva_X;
      pos_tiro_Y[0] = pos_oriva_Y + variacaoDopulo -28;
    }
    
     if(!Nao_me_siga_bala[1])
    {
      pos_tiro_X[1] = pos_oriva_X;
      pos_tiro_Y[1] = pos_oriva_Y + variacaoDopulo -28;
    }
    
     if(!Nao_me_siga_bala[2])
    {
      pos_tiro_X[2] = pos_oriva_X;
      pos_tiro_Y[2] = pos_oriva_Y + variacaoDopulo -28;
    }
      
    
      
if(j>=3)
Disparo = false;

  if(Disparo)
  {
  
    j++;
   
    if(!Tiro1 && !Tiro2 && !Tiro3)
    {
    Tiro1 = true;
    Nao_me_siga_bala[0]=true;
    Disparo = false;
    }
    
    else if(Tiro1 && !Tiro2 && !Tiro3)
    {
    Tiro2 = true;
    Nao_me_siga_bala[1]=true;
    Disparo = false;
    }
    
     else if(!Tiro1 && Tiro2 && !Tiro3)
    {
    Tiro1 = true;
    Nao_me_siga_bala[0]=true;
    Disparo = false;
    }
    
     else if(!Tiro1 && !Tiro2 && Tiro3)
    {
    Tiro1 = true;
    Nao_me_siga_bala[0]=true;
    Disparo = false;
    }
    
     else if(Tiro1 && Tiro2 && !Tiro3)
    {
      Tiro3 = true;
      Nao_me_siga_bala[2]=true;
      Disparo = false;
    }
    
      else if(Tiro1 && !Tiro2 && Tiro3)
    {
      Tiro2 = true;
      Nao_me_siga_bala[1]=true;
      Disparo = false;
    }
    
      else if(!Tiro1 && Tiro2 && Tiro3)
    {
      Tiro1 = true;
      Nao_me_siga_bala[0]=true;
      Disparo = false;
    }
    
    
    else if(Tiro1 && Tiro2 && Tiro3)
    image(Energia[0],-5,150);
    
    
  }
      
      if(Tiro1)
{
  pos_tiro_X[0]+=5 + (Dificuldade/10);
    if(pos_tiro_X[0]>800)
      {
        Tiro1=false;
        Nao_me_siga_bala[0]=false;
        j=0;
        
       
        
        
       
      }
}
 
  if(Tiro2)
{
  pos_tiro_X[1]+=5 + (Dificuldade/10);
    if(pos_tiro_X[1]>=850)
      {
        Tiro2=false;
        Nao_me_siga_bala[1]=false;
        j=0;
        
        
       
        
      }
}  

  if(Tiro3)
{
  pos_tiro_X[2]+=5 + (Dificuldade/10);
    if(pos_tiro_X[2]>850)
      {
        Tiro3=false;
       Nao_me_siga_bala[2]=false;
       j=0;
      
      }
}

  
 
  //colisão com os tiros   x+23 ,x+30 y+56, y+64 << posião do tiro
  for(n=0;n<3;n++)
    {
        for(i=0;i<3;i++)
        {
          if(pos_corvo1_X[i]<=pos_tiro_X[n]+30 && pos_corvo1_X[i] + 46 >=pos_tiro_X[n]+23 && pos_corvo1_Y[i]+56>=pos_tiro_Y[n]+56 && pos_corvo1_Y[i]<= pos_tiro_Y[n]+64)
            {  
                pos_tiro_X[n]= 800;
                pos_corvo1_X[i]=(int)random(0,maxValor)+800;
                unidade++;
            }
          
        }
    }
    
// 3 munições  apenas uma possibilidade 
if(!Tiro1 && !Tiro2 && !Tiro3)
{
  image(Energia[3],-5,150);
  j=0;
}
// uma munição todas as possibilidades 
if(Tiro1 && !Tiro2 && !Tiro3)                  
image(Energia[2],-5,150);

if(!Tiro1 && Tiro2 && !Tiro3)
image(Energia[2],-5,150);

if(!Tiro1 && !Tiro2 && Tiro3)
image(Energia[2],-5,150);

//duas munições todas as possibilidades 

if(Tiro1 && Tiro2 && !Tiro3)
image(Energia[1],-5,150);

if(Tiro1 && !Tiro2 && Tiro3)
image(Energia[1],-5,150);

if(!Tiro1 && Tiro2 && Tiro3)
image(Energia[1],-5,150);

// sem munição apenas uma possibilidade 

if(Tiro1 && Tiro2 && Tiro3)
image(Energia[0],-5,150);

  
  
                                   //disparo do corvo
                                   
                                   
                                   
 for(i=0;i<3;i++)
 {
   
              if(Cu_preso[i])
      {
        pos_caquinha_X[i]=pos_corvo1_X[i]+20;
        pos_caquinha_Y[i]=pos_corvo1_Y[i];
      }

   
   
   if(pos_oriva_X < pos_corvo1_X[i] && pos_corvo1_X[i]+46 < pos_oriva_X+53 && pos_corvo1_X[i]+46 >pos_oriva_X && pos_oriva_X+53 > pos_corvo1_X[i])
     {
       Cu_preso[i] = false;
     }
     
   if(!Cu_preso[i])
     {
       image(caquinhadeCorvo[i],pos_caquinha_X[i],pos_caquinha_Y[i]);
       pos_caquinha_Y[i] +=2 +(Dificuldade/128); 
     }
     
     if(pos_caquinha_Y[i]>500)
     {
       Cu_preso[i] = true;
     }
  

  if(pos_caquinha_Y[i]+21 >= pos_oriva_Y +variacaoDopulo && pos_caquinha_X[i] <= pos_oriva_X +53 && pos_caquinha_X[i]+9 >= pos_oriva_X)
  {
      numeros_Vida++;
      pos_caquinha_Y[i]=501;
  }
  
  
 }
  

  
  
  
  
  
  //movimentação do orivalado
  if(esquerda){ pos_oriva_X -=5 ;} //ele vai para a esquerda //<>//
  else{ 
if(direita){ pos_oriva_X+=5 ;} //ele vai para a direita
      }
      
      
    if(subir){pos_oriva_Y-=5;} //ele vai descer
    if(descer){pos_oriva_Y+=5;}//ele vai subir
    if (pular) 
          {
            subir=false;
            descer=false;
            limite =false;
            variacaoDopulo=variacaoDopulo-10;
                if(variacaoDopulo==-100)
                {
                      pular=false;cairDopulo=true;limite=true;
                }
  
         }
         
    if(cairDopulo)
    {
      subir=false;
      descer=false;
      limite=true;
      pular=false;
    variacaoDopulo=variacaoDopulo+10;
    if(variacaoDopulo==0){cairDopulo=false;}
    }
 
    
  
     
      //o oriva viking não pode sair da tela
      if(pos_oriva_X < 50){pos_oriva_X = 50;}
      if(pos_oriva_X > 680){pos_oriva_X =680;} 
      if(pos_oriva_Y > 340){pos_oriva_Y = 340;}
      if(limite){ if(pos_oriva_Y < 290){pos_oriva_Y = 290;}}
      

    
  
  //movimentação do corvo
  for(int i=0;i<3;i++)
  {
     pos_corvo1_X[i]= pos_corvo1_X[i]-(int)random(2,7+ int(Dificuldade/1000));
    
        if(pos_corvo1_X[i]<0)
        {
       tempoAleatorio = tempoAleatorio + (int)random(0,maxValor);
     
            if(tempoAleatorio>150)
            pos_corvo1_X[i]=(int)random(0,maxValor)+800;
        }
  
 //colisao do corvo OBS: ISSO ESTÁ DENTRO DO FOR 
     if(pos_corvo1_X[i] <= pos_oriva_X+53 && pos_corvo1_X[i]+46 >= pos_oriva_X && pos_corvo1_Y[i] +56 >= pos_oriva_Y+variacaoDopulo && pos_corvo1_Y[i]<= pos_oriva_Y+103+variacaoDopulo)
     {
       pos_corvo1_X[i]=(int)random(0,maxValor)+800;
       numeros_Vida++;

       
 
  }
}
if(numeros_Vida>=8)
{
  numeros_Vida=0;
  pos_oriva_X=50;
  pos_oriva_Y=340;
  fimJogo=true;
  comecoJogo=true;
}
  

   image(Vida[8-numeros_Vida],-90,30);                              // a ordem que se carrega as imagens é muito importante !!
  image(oriva ,pos_oriva_X,pos_oriva_Y+variacaoDopulo);
      for(int i=0;i<3;i++)
        {
          image(corvo[i], pos_corvo1_X[i],pos_corvo1_Y[i]);
        }
                                                               //PONTUAÇÃO
               
if(unidade>=10) 
  {
    unidade=0;
    dezena++;
    Dificuldade++;
            
  }
  if(dezena>=10)
  {
    dezena=0;
    centena++;
  }
  if(centena>=10)
  {
    centena=0;
    unidade_de_milhar++;
  }
  if(unidade_de_milhar>=10)
  {
    unidade_de_milhar=0;
    dezena_de_milhar++;
  }                                            
  if(dezena_de_milhar>=10)
  {
    dezena_de_milhar=0;
    centena_de_milhar++;
  }
  if(centena_de_milhar>=10)
  {
    centena_de_milhar=0;
    unidade_de_milhao++;
  }
  
 
    
   if(unidade_de_milhao<10)
{
 image(Score,260,20);       
 image(Numeros[0+unidade],380,20);
 image(Numeros[0+dezena],370,20);
 image(Numeros[0+centena],360,20);
 image(Numeros[0+unidade_de_milhar],350,20);              
 image(Numeros[0+dezena_de_milhar],340,20);
 image(Numeros[0+centena_de_milhar],330,20);
 image(Numeros[0+unidade_de_milhao],320,20);
} 
else
{
 image(ScoreMax,410,55);
   image(Score,260,20);
}

  } // do if comecoJogo
}

void keyPressed()
{  
  if(key == CODED && !fimJogo)
   {
       if(keyCode == LEFT)
       {
         esquerda = true;
         
       }
    
    else if(keyCode == RIGHT)  
      {
           direita = true;
      }
    
        
        if(keyCode == UP)
        {
            subir = true;
        }
        else if(keyCode == DOWN)
        {  
          descer = true;
        }
        
   }     
        if(key == ' ' )
          {  
          pular = true;
          }
          
        if (key == ENTER && !fimJogo)
          {
            comecoJogo=false;
          }  
   
        if(key == 'z' && !fimJogo)
         Disparo=true;
         
         if(key == BACKSPACE)
           {
             fimJogo=false;
           }
}

   
   
   
void keyReleased()
{  
  if(key == CODED)
   {
       if(keyCode == LEFT)
    
         esquerda = false;
       
   
       
       
        else if(keyCode == RIGHT)
         {
           direita = false;
         }
     
      
        if(keyCode == UP)
        {
            subir = false;
        }
        
         else if(keyCode == DOWN)
        {  
          descer = false;
        }
        
        
   }
}
