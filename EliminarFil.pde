void EliminarFil(){
  for (int i=19; i >0; i--) {
    fila= true;
    for (int j=0; j < 10; j++) {
      if (matriz[i][j]==null){
        fila= false;
      }
    }
    if (fila== true){
      filas++;
      for (int k=0; k < i; k++) {
        matriz[i-k]=matriz[i-k-1];
      }
    }
  }
}
