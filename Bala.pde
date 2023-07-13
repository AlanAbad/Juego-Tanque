class bala{
  float Potencia;
  float diametro, x, y;
  PImage aspectoBala;
  color tempC = color(0);
  float VelocidadX, VelocidadY;
  float Angulo;
  int nT=15;
  float dE = 0;
  int TP=0;
  bala(float a, float b, float z,float d, float e){
    x=a;
    y=b;
    VelocidadX = cos(e)*z;
    VelocidadY = sin(e)*z;
    Potencia = z;
    diametro = d;
    Angulo = e;
    
  }
  
  boolean dibujar(){
    boolean fin = true;
    fill(tempC);
    
    ellipse(x, y, diametro, diametro);
 
 if (TP==1){
   int t = int(random(3));
    if(t==0){
      fill(255,255,0);
      stroke(255,255,0);
    }else if(t==1){
      fill(255,0,0);
      stroke(255,0,0);
    }
    else{
      fill(255,69,0);
      stroke(255,69,0);
    }
    pushMatrix();
    translate(x, y);
    for (int i=0;i<nT;i++){
      float a = random(2*PI);
      float x1 = (dE/2+10)*cos(a);
      float y1 = (dE/2+10)*sin(a);
      a = random(2*PI);
      float x2 = (dE/2+10)*cos(a);
      float y2 = (dE/2+10)*sin(a);
      a = random(2*PI);
      float x3 = (dE/2+10)*cos(a);
      float y3 = (dE/2+10)*sin(a);
      triangle(x1,y1,x2,y2,x3,y3);
    }
    if(dE<diametro*5){
      dE=dE+0.6;
    }
    else{
      fin = false;
    }
  popMatrix();
  fill(0);
  stroke(0);
 }
 return fin;
}
  
boolean dispara(float xOT,float yOT,float wOT,float hOT){
    if(y<height*2/3 && !(x>xOT && x<xOT+wOT && y>yOT && y<yOT+hOT)){
      x = x+VelocidadX/10;
      y = y-VelocidadY/10;
      VelocidadY = VelocidadY-9.81/10;
      return false;
    }else{
      TP=1;
      if(x>xOT && x<xOT+wOT && y>yOT && y<yOT+hOT){
         return true; 
      }
      return false;
    }
 }
}
 
    
    
