void FichaSiguiente(){
  if (fi==0){
    push();
    fill(vColor);
    for (int i = 0; i <= 8; i++) {
      if ((240 & (1 << 8 - i)) != 0) {
        rect(((i % 3)*30)+400, (((i / 3) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==1){
    push();
    fill(rColor);
    for (int i = 0; i <= 8; i++) {
      if ((408 & (1 << 8 - i)) != 0) {
        rect(((i % 3)*30)+400, (((i / 3) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==2){
    push();
    fill(cColor);
    for (int i = 0; i <= 16; i++) {
      if ((61440 & (1 << 15 - i)) != 0) {
        rect(((i % 4)*30)+400, (((i / 4) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==3){
    push();
    fill(mColor);
    for (int i = 0; i <= 8; i++) {
      if ((184 & (1 << 8 - i)) != 0) {
        rect(((i % 3)*30)+400, (((i / 3) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==4){
    push();
    fill(nColor);
    for (int i = 0; i <= 8; i++) {
      if ((480 & (1 << 8 - i)) != 0) {
        rect(((i % 3)*30)+400, (((i / 3) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==5){
    push();
    fill(aColor);
    for (int i = 0; i <= 8; i++) {
      if ((456 & (1 << 8 - i)) != 0) {
        rect(((i % 3)*30)+400, (((i / 3) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }else if (fi==6){
    push();
    fill(oColor);
    for (int i = 0; i <= 4; i++) {
      if ((15 & (1 << 3 - i)) != 0) {
        rect(((i % 2)*30)+400, (((i / 2) | 0)+4)*30, 30, 30);
      }
    }
    pop();
  }
}
