#!/bin/bash

##Imprime el nombre del archivo en cual se va a trabajar

echo "Filename: Saavedra2013/$1"

## Identificamos la variable
## al momento de codificar, en la linea de comandos
## se ejecuta la variable llamando al archivo .txt


## Imprimimos el numero de filas
## comando cat imprime el numero de filas  pero 
## con wc -l contamos el numero de filas 
echo "Number of rows:"
cat $1 | wc -l

## Con head -n 1 se imprime solo la primera columna
## concatenamos la funcion de desaparcer los espacios 
## entre los caracteres con tr -d 
## y finalmente  con wc -c contamos el # de columnas
echo "Number of columns:"
head -n 1 $1 | tr -d " " | tr -d "" | wc -c
