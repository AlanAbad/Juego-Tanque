class Cuerpo{
  float altura;
  float ancho;
  PImage blindaje;
  float x;
  float y;
  color c;
  
  Cuerpo(float h,float w,float a,float b,color g){
    altura=h;
    ancho=w;
    x=a;
    y=b;
    blindaje = loadImage("fondotanque2.png");
  }
  float getAncho(){
    return ancho;
  }
  void Dibuja(){
    rect(x,y,ancho,altura);
    image(blindaje,x,y,ancho,altura);
    
  }
  
  void mueveD(){
    x+=1;
  }
  
  void mueveI(){
    x-=1;
  }
}
