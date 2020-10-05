void drawFicha (){
  q=0;
  for(int p=0; p<8; p++){
    Posicion[p]=0;
  }
  if (f==0){
    drawV();
    rot=dos ;
  } else if (f==1){
    drawR();
    rot=dos ;
  } else if (f==2){
    drawC();
    rot=dos ;
  } else if (f==3){
    drawM();
    rot=cua ;
  } else if (f==4){
    drawN();
    rot=cua;
   } else if (f==5){
    drawA();
    rot=cua ;
  } else if (f==6){
    drawO();
  }
}
void drawV() {
  push();
  a=V[rot];
  fill(vColor);
  for (int i = 0; i <= 8; i++) {
    if ((V[rot] & (1 << 8 - i)) != 0) {
      Posicion[q]=(((i / 3) | 0) + y );
      Posicion[q+1]=((i % 3)+x);
      q+=2;
      rect(((i % 3)+x)*30, (((i / 3) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawR() {
  push();
  a=R[rot];
  fill(rColor);
  for (int i = 0; i <= 8; i++) {
    if ((R[rot] & (1 << 8 - i)) != 0) {
      Posicion[q]=(((i / 3) | 0) + y );
      Posicion[q+1]=((i % 3)+x);
      q+=2;
      rect(((i % 3)+x)*30, (((i / 3) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawC() {
  push();
  a=C[rot];
  fill(cColor);
  for (int i = 0; i <= 16; i++) {
    if ((C[rot] & (1 << 15 - i)) != 0) {
      Posicion[q]=(((i / 4) | 0) + y );
      Posicion[q+1]=((i % 4)+x);
      q+=2;
      rect(((i % 4)+x)*30, (((i / 4) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawM() {
  push();
  a=M[rot];
  fill(mColor);
  for (int i = 0; i <= 8; i++) {
    if ((M[rot] & (1 << 8 - i)) != 0) {
      Posicion[q]=(((i / 3) | 0) + y );
      Posicion[q+1]=((i % 3)+x);
      q+=2;
      rect(((i % 3)+x)*30, (((i / 3) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawN() {
  push();
  a=N[rot];
  fill(nColor);
  for (int i = 0; i <= 8; i++) {
    if ((N[rot] & (1 << 8 - i)) != 0) {
      Posicion[q]=(((i / 3) | 0) + y );
      Posicion[q+1]=((i % 3)+x);
      q+=2;
      rect(((i % 3)+x)*30, (((i / 3) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawA() {
  push();
  a=A[rot];
  fill(aColor);
  for (int i = 0; i <= 8; i++) {
    if ((A[rot] & (1 << 8 - i)) != 0) {
      Posicion[q]=(((i / 3) | 0) + y );
      Posicion[q+1]=((i % 3)+x);
      q+=2;
      rect(((i % 3)+x)*30, (((i / 3) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
void drawO() {
  push();
  a=O[rot];
  fill(oColor);
  for (int i = 0; i <= 4; i++) {
    if ((O[rot] & (1 << 3 - i)) != 0) {
      Posicion[q]=(((i / 2) | 0) + y );
      Posicion[q+1]=((i % 2)+x);
      q+=2;
      rect(((i % 2)+x)*30, (((i / 2) | 0) + y)*30, 30, 30);
    }
  }
  pop();
}
