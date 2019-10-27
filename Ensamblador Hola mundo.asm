;basicamente el punto y coma es la manera de hacer comentarios
;para un programa en lenguaje ensamblador 
.model small			;se determinal el tamaño del arhivo, en este caso small hace referencia a ser un programa chico
.stack				;se establece la pila, stack en ingles
.data				;aqui se declaran las variables a usar
	mensaje db "Hola mundo $" ; primero, el nombre de la variable
	;despues se determina el tipo de variable, en esta caso db es Data Base
	;para este caso por ser db se puede introducir caracteres
	;se colocan las comillas dobles para indicar que texto se quiere almacenar en mensaje
	;se coloca el simbolo $ para indicar el fin de la cadena de caracteres
.code 				;aqui es donde se introducen las instrucciones que realizara el programa
;y se uson los Registros de uso general
;basicamente mov, es decir mover tal instruccion a tal
;por ejemplo: mover ax en @data
	mov ax, @data 	;ax: acomulador, @data: lo que hay en .data
	mov ds, ax		;ds: registro del segmento de datos
	mov ah, 09h		;ah: parte baja del registro 
	mov dx, offset mensaje		;offset: indica tomar el dato de la variable indicada
 	int 21h			;int: interrupcion, 21h: llamar a diversas funciones DOS
 	mov ah, 4ch 	;4ch: devuelve codigo de retorno al programa padre 
 	int 21h

 end 				;se indica end el final del programa


