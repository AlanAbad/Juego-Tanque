Tanque test1,test2;
boolean TT1,TT2;
int g=0;
bala b;
int turno;
int pantallaT=0;
PImage img;
PImage fondo;
PFont fuente;

void setup(){
  size(1500,800);
  img = loadImage("Tanque.png");
  fondo = loadImage("Suelo1.png");
  fuente=createFont("Times New Roman",140);
  background(255);
  test1=new Tanque(width/4-100,2*height/3-50,100,200,color(255,0,0),40,150,color(0,0,0),60,80,1);
  test2=new Tanque(width/2+width/4,2*height/3-50,100,200,color(0,0,255),40,150,color(0,0,0),60,80,2);
  b=new bala(50,400,1000,100,50);
  frameRate(90);
  turno=1;
  TT1=false;
  TT2=false;  
}

void draw(){
   if (pantallaT==0) {
  background(0,0,0);
  image(img, 0, height/5, width*1, height*.8);
   fill(0);
  stroke(0,0,0);
  fill(255,255,255);
    textFont(fuente);
    text("TANK WAR",width/3-100,height/7);
    textSize(40);
    text("Presiona ´P´ para continuar",width/2-250,height-20);
}
  if(pantallaT==1){
    image(fondo,0, 0, width, height);
    fondo.resize(1500,800);
    fondo(test1.vida,test2.vida);
    TT1=test1.Dibuja(test2.x,test2.y,test2.C.ancho,test2.C.altura);
  TT2=test2.Dibuja(test1.x,test1.y,test1.C.ancho,test1.C.altura);
 
  
  if(TT1){
    if(!test2.restaVida()){
     dibujaGanador(1);
    }
  }
  if(TT2){
    if(!test1.restaVida()){
     dibujaGanador(2);
    }
  }
  }
  
    }
  


void dibujaGanador(int gan){
  g=gan;
}

void fondo(float v1,float v2){
  
  //fill(120,120,255); //cielo
  //rect(0,0,width,2*height/3);
  stroke(255,0,0);
  line(width/2,0,width/2,height);
  stroke(0,200,0);
  fill(0,200,0);
  rect(10,10,(width/2-20)*(v1/200),30);
  rect(width-10,10,-(width/2-20)*(v2/200),30);
  stroke(200,0,0);
  fill(200,0,0);
  rect((width/2-20)*(v1/200)+10,10,(width/2-20)*((200-v1)/200),30);
  rect(width-10-(width/2-20)*(v2/200),10,-(width/2-20)*((200-v2)/200),30);
  stroke(0);
  fill(0);
  if(!(g==0)){
    fill(255,255,255);
    stroke(0,0,0);
    textFont(fuente);
    textSize(50);
    text("Ganador jugador "+str(g),width/2-200,height/2-25);
  }
}

void keyPressed() {
  
  if (key=='p'){
pantallaT=1;
}
  if(turno==1){
  if(key == CODED){
    if(keyCode == LEFT){
      test1.mueveI();
    }
    if(keyCode == RIGHT){
      test1.mueveD();
    }
    if(keyCode == UP){
      test1.menosAngulo();
    }
    if(keyCode == DOWN){
      test1.masAngulo();
     
    }
  }
  if(key == 'a'){
    test1.disparo();
    turno = turno * (-1);
    }
   
 }
 else if(turno==-1){
  if(key == CODED){
    if(keyCode == LEFT){
      test2.mueveI();
    }
    if(keyCode == RIGHT){
      test2.mueveD();
    }
    if(keyCode == UP){
       test2.masAngulo();
    }
    if(keyCode == DOWN){
          test2.menosAngulo();
    }
  }
  if(key == 'a'){
    test2.disparo();
    turno = turno * (-1);
    }
 }
}
