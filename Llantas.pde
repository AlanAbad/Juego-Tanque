class Llantas{
  float diametro, x, y, vRotacion;
  float anchoCuerpo;
  PImage fllanta;
  float a;
  
  Llantas(float d, float a, float b, float v,float aC){
    diametro = d;
    x = a;
    y = b;
    vRotacion = v;
    anchoCuerpo=aC;
    a=0;
   fllanta = loadImage("fondollantas.jpeg");
  }
  
  void Dibuja (){
   fill(154, 207, 172);
   ellipse(x,y,diametro,diametro);
   ellipse(x+anchoCuerpo,y,diametro,diametro);
   stroke(30, 58, 39);
   ellipse(x,y,diametro*.8,diametro*.8);
   ellipse(x+anchoCuerpo,y,diametro*.8,diametro*.8);
   //line(x-diametro*.8/2+anchoCuerpo,0,x+anchoCuerpo+diametro*.8/2,0);
   //line(anchoCuerpo,y-diametro*.8/2,anchoCuerpo,y+diametro*.8/2);
   //line(x-diametro*.8/2,y,x+diametro*.8/2,y);//horizontal
   //line(x,y-diametro*.8/2,x,y+diametro*.8/2);//vertical
   stroke(30, 58, 39);
  }
  void rota(){
    
    a+=0.02;
  }
  void mueveD(){
    x+=1;
  }
  void mueveI(){
    x-=1;
  }
}
