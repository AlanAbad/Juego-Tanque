class Canion{
  float Potencia;
  float alto;
  float longitud;
  color c;
  float x;
  float y;
  float angulo;
  float velocidad;
  int tipocanion;
  PImage fcañon;
  
  Canion(float h,float w,float a,float b,color g, float A){
    alto=h;
    longitud=w;
    x=a;
    y=b;
    fcañon = loadImage("fondotanque2.png");
    angulo=A;
    if (angulo==0){
      tipocanion=0;
    }
    else if(angulo==PI){
      tipocanion=1;
    }
  }
  
   void Dibuja(){
    pushMatrix();
    if (tipocanion==0){
      translate(x,y);
       rotate(angulo);
          rect(0,-alto/2,longitud,alto);
          image(fcañon,0,-alto/2,longitud,alto);
    }
    else if(tipocanion==1){
      translate(x+longitud,y);
       rotate(angulo+PI);
        rect(0-longitud,-alto/2,longitud,alto);
        image(fcañon,0-longitud,-alto/2,longitud,alto);
    }
   
    popMatrix();
  }
  
  void setAngulo(float a){
    angulo=a;
  }
  
  void mueveD(){
    x+=1;
  }
  
  void mueveI(){
    x-=1;
  }
}

  
