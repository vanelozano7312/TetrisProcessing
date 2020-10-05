void dibmatriz(){
  for (int i=0; i < 20; i++) {
    for (int j=0; j < 10; j++) {
      if (matriz[i][j] != null){
        if (matriz[i][j] == "v"){
          fill(vColor);
        }else if (matriz[i][j]=="r"){
          fill(rColor);
        }else if (matriz[i][j]=="c"){
          fill(cColor);
        }else if (matriz[i][j]=="m"){
          fill(mColor);
        }else if (matriz[i][j]=="n"){
          fill(nColor);
        }else if (matriz[i][j]=="a"){
          fill(aColor);
        }else if (matriz[i][j]=="o"){
          fill(oColor);
        }
        square(j*30 +30, i*30 + 30, 30);
      }
    }
  }
}
