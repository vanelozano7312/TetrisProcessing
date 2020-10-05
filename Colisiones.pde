void Colisiones(){
  if ((matriz[Posicion[0]][Posicion[1]-1]!=null) || (matriz[Posicion[2]][Posicion[3]-1]!=null) || (matriz[Posicion[4]][Posicion[5]-1]!=null) || (matriz[Posicion[6]][Posicion[7]-1]!=null)){
    x=4;
    y=1;
    cua=0; 
    dos=0; 
    rot =0;
    matriz[Posicion[0]-1][Posicion[1]-1]= Tetrominos[f];
    matriz[Posicion[2]-1][Posicion[3]-1]= Tetrominos[f];
    matriz[Posicion[4]-1][Posicion[5]-1]= Tetrominos[f];
    matriz[Posicion[6]-1][Posicion[7]-1]= Tetrominos[f];
    EliminarFil();
    f=fi;
    fi=int(random(7));
    for(int s=0; s<8; s+=2){
      if (Posicion[s]==1){
        textFont(font);
        textSize(30);
        fill(0);
        text("Game", 70, 300);
        text("Over", 80, 360);
        juego = false;
      }
    }
  }
}
