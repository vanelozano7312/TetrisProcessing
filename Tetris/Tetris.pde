boolean fila, juego;
int[] Posicion = new int[8];
String[] Tetrominos = {"v", "r", "c", "m", "n", "a", "o"};
String matriz[][] = new String[21][10];
PImage tablero;
PFont font;
int f, fi, a, t, mia, cua, dos, rot, q, puntaje, nivel, filas, baj;
int x=4;
int y =1;
int [] O = {15};
color oColor = #FFFF00;
int [] A = {456, 420, 312, 150};
color aColor = #0000FF;
int [] C = {61440, 34952};
color cColor = #51D1F6;
int [] M = {184, 178, 464, 308};
color mColor = #572364;
int [] N = {480, 294, 120, 402};
color nColor = #FF8000;
int [] R = {408, 180};
color rColor = #FF0000;
int [] V = {240, 306};
color vColor = #008F39;

void setup() {
  fi = int(random(7));
  f = int(random(7));
  juego = true;
  tablero = loadImage("tablero.jpg");
  font = createFont("LEMONMILK-Bold.otf", 10);
  size(540, 660);
  for (int i=0; i<10; i++){
    matriz[20][i]="g";
  }
  noStroke();
}
void draw() {
  int mi= millis();
  puntaje= (filas*100)+ (baj*5);
  nivel= (floor(filas/10))+1;
  if (juego == true){
    image(tablero, 0, 0, width, height);
    dibmatriz();
    drawFicha();
    Colisiones();
    FichaSiguiente();
    if (mi>=1000 & (floor(mi/1000)>mia)){
      mia=floor(mi/1000);
      y++;
    }
  }
  push();
  textFont(font);
  fill(0);
  text(puntaje, 430, 365);
  text(filas, 430, 485);
  text(nivel, 430, 605);
  pop();
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if (f < 3){
        dos++;
      } else if (f<6) {
        cua++;
      }
    } else if (keyCode == DOWN) {
      y ++;
      baj++;
    } else if (keyCode == RIGHT) {
      if (f==2){
        if (rot ==0 && x<7){
          x++;
        } else if (rot==1 && x<10){
          x++;
        }
      }else if (f==6 && x<9){
        x++;
      }else if (f!=2 && f!=6){
        if ((a&73) == 0 && x<9){
          x++;
        } else if ( (a&73) != 0 && x<8){
          x++;
        }
      }
    } else if (keyCode == LEFT) {
      if (x>1){
        x--;
      }
    }
    cua = cua < 0 ? 3 : cua % 4;
    dos = dos < 0 ? 1 : dos % 2;
  }
}
