int ctrl = 80;
public void setup(){
  size(500,500);
  frameRate(5);
  rectMode(CENTER);
}
public void draw(){
  int cor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255) );
  background(240);
  fractal(250,250,ctrl, cor);
}
public void fractal(int x, int y, int siz, int rgb){  
  fill(rgb, 75);
  ellipse(x,y,siz,siz);
  if(siz > 10){
    fractal(x+siz/2, y-siz/2, siz/2, rgb);//top right
    fractal(x-siz/2, y-siz/2, siz/2, rgb); //top left
    fractal(x+siz/2, y+siz/2, siz/2, rgb);//bottom right
    fractal(x-siz/2, y+siz/2, siz/2, rgb);//bottom left
    
  }
}
public void keyPressed(){
  if(key == 'w'){
    ctrl += 20;
  }
  if(key == 's'){
    ctrl -= 20;
  }
}
