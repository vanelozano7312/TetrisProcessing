# Tetris en Processing

___

En este proyecto se realizó un tetris usando programación estructurada mediante processing. Tetris es un videojuego popular cuya mecánica está basada en los tetrominos, estas son formas geométricas compuestas de cuatro cuadrados iguales conectados entre sí ortogonalmente. Estos tetrominos van cayendo por el tablero uno a uno, aleatoreamente, y el jugador, con ayuda de su teclado puedo rotar o mover lateralmente estos tetrominos con el objetivo de acomodarlos en la parte inferior del tablero sin dejar espacios vacios, para así, ir eliminando las filas que estén completas y aumentando el puntaje y la dificultad del juego.
A la hora de programar una versión de este juego se deben tener en cuenta los siguientes aspectos:

## Las fichas, sus rotaciones y el tablero:
<p align="center"><img src="Tetrominos.png" width="50%"></p>
Ya que cada tetromino es diferente, así como sus colores y sus rotaciones, es importante tenerlos en la memoria de la forma más optimizada posible. En este proyecto se  le asigna un entero a cada rotación del tetromino, este se escoge pasando de la matriz del tetromino a una matriz de 0s y 1s donde 1 representa los cuadrados el tetromino, y así mismo esta mariz para a ser un número binario que nos dará el entero necesario para la representación.
Por ejemplo el tetromino S en su rotación 1 está dado por la matriz:{{011}, {110}, {000}} y su equivalente en binario es 011110000 es decir 240. De esta manera se almacenaron todas las fichas y sus rotaciones en la memoria. Los colores se guardan individualmente para cada tetromino.

<p align="center"><img src="tablero.jpg" width="30%"></p>
Para el tablero se asignó una matriz de 20x10 que es el tamaño de celdas disponibles para los tetrominos,  con valores iniciales null que representan los campos vacios de este y que a medida que los tetrominos llegan a la parte inferior del tablero pasan a ser alguno de los siguientes caracteres: c, n, v, r, a, o, m. Estos caracteres permiten diferenciar los colores en cada celda del tablero y a su vez permiten a las siguientes piezas identificar que esa celda no está vacía como lo veremos más adelante. 

## Caida de las piezas:
Como sabemos las piezas en tetris tienen una caida constante, la cual en processsing podemos cronometrar con la función millis() que lleva el conteo de los milisegundos transcurridos desde que inició el programa. La caida del tetromino se realizó de la siguiente manera:

```processing
int mi= millis();                      \\asignamos millis a una variable
if (mi>=1000 & (floor(mi/1000)>mia)){  \\Después del primer segundo revisamos si el tiempo en ese momento 
 mia=floor(mi/1000);                   \\es mayor al anterior (mia), si es así aumentamos la variable y 
 y++;                                  \\que nos indica la altura del tetromino
 }
```

## Colisiones:
Para evitar que los tetrominos se sobrepongan en cada movmiento debemos analizar si en el movimiento siguiente el tetromino estaría en una posición ya ocupada, es decir sus valores en la matriz son diferentes de null. Para ello debemos ver si alguno de los 4 cuadrados del tetromino está sobre una celda ocupada en la matriz, si es así debemos generar un tetromino nuevo en la posición inicial, es decir arriba en el centro y guardar el que acaba de caer como fijo en la matriz. Cada vez que guardamos un tetromino en la matriz debemos revisar si el juego no ha finalizado, esto es revisar si hay espacio en las filas superiores para que el nuevo tetromino aparezca sin sobreponer ningún otro.

```Processing
void Colisiones(){
  if ((matriz[Posicion[0]][Posicion[1]-1]!=null) || (matriz[Posicion[2]][Posicion[3]-1]!=null) || (matriz[Posicion[4]][Posicion[5]-1]!=null) || (matriz[Posicion[6]][Posicion[7]-1]!=null)){                                  \\Verificamos si el tetromino colisionará
    x=4;
    y=1;
    cua=0; 
    dos=0; 
    rot =0;                                               \\ volvemos a iniciar todas las variables para el nuev tetromino
    matriz[Posicion[0]-1][Posicion[1]-1]= Tetrominos[f];
    matriz[Posicion[2]-1][Posicion[3]-1]= Tetrominos[f];
    matriz[Posicion[4]-1][Posicion[5]-1]= Tetrominos[f];
    matriz[Posicion[6]-1][Posicion[7]-1]= Tetrominos[f];   \\ Guardamos el tetromino en la matriz/tablero
    EliminarFil();
    f=fi;
    fi=int(random(7));
    for(int s=0; s<8; s+=2){                               \\Verificamos que el juego no haya acabado
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
```
## Eliminar filas:
Otra parte importante del juego es la eliminación de las filas que se han completado. Esto lo podemos hacer de manera sencilla definiendo una variable booleana y recorriendo cada fila de la matriz, el valor de la variable solo cambiará si en la fila hay algún valor null, es decir celda vacía, si el valor booleano permaece igual al recorrer la fila está será eliminada por estar completa. En la matriz esta fila tomará el valor de la fila superior y así harán todas las filas superiores, para dar el efecto de que al ser eliminada una fila las demás cayeron.
Para el puntaje definimos la variable filas que va acumulando la cantidad de filas eliminadas, que luego se usa para calcular puntaje=filas*100.
```processing
void EliminarFil(){
  for (int i=19; i >0; i--) {
    fila= true;                   \\Iniciamos la variable booleana
    for (int j=0; j < 10; j++) {  \\Recorremos cada fila de la matriz
      if (matriz[i][j]==null){    \\Reconocemos las celdas vacias
        fila= false;
      }
    }
    if (fila== true){             \\Si no hay celdas vacias eliminamoos la fila
      filas++;
      for (int k=0; k < i; k++) {
        matriz[i-k]=matriz[i-k-1];
      }
    }
  }
}
```
