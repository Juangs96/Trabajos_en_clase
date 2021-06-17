Practica
-----------------------------
#Punto 1.
notas=c(5,7,9)
fin = length(notas)
for (i in 1:fin) {
  if(notas[i]>=7) {
    print("Aprobado")
  } else {
    print("Reprobado")
    }    }
----------------------------
#Punto 2.
  d = 1.5
  i = 2L
  s = "Casa"
----------------------------
#Punto 3.
    
    Vector_Enteros = c(1L,2L,3L) #C significa combinacion
    typeof(Vector_Enteros)
----------------------------
#Punto 4.
    Vector_Meses = c("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre")
    typeof(Vector_Meses)
----------------------------
#Punto 5.
      Vector_Nombres = c("Ruley","Juan Carlos","Brayner")
----------------------------
#Punto 6.
      Vector_nombre_pelicula = c("Shrek","Shrek 2","Shrek Tercero","Shrek: Felices para siempre")
      Vector_puntuacion = c(7.9,7.2,6.1,6.3)
      Vector_Año = c(FALSE,FALSE,TRUE,TRUE)
----------------------------
#Punto 7.
      Numeros = c(1,2,3,4,5,6,7,8,9,10,2,4,6,8,10)
      Numeros2 = c(1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,60)
      Numeros3 = c(1,2,3,4,5,6,7,8,9,10,20,30,0.5,50,60)  
      
      length(Vector_puntuacion)
      min(Numeros)
      max(Numeros)
      sum(Vector_puntuacion) 
      median(Vector_puntuacion) #El numero medio de los valores   
      mean(Vector_puntuacion) #Media (suma de los valores entre cantidad de valores)
      sort(Vector_puntuacion) #Ordena el vector(por defecto en orden ascendente) 
      plot(Vector_puntuacion)
      unique(Numeros) #Devuelve un vector con valores unicos
      which(Numeros == 10) #Devuelve la posicion de los valores consultados
      which.max(Numeros2) #Devuelve la posiciòn del valor maximo
      which.min(Numeros3) #Devuelve la posicion del valor minimo
      sqrt(Numeros3) #Raíz cuadrada del vector
-----------------------------
#Punto 8.
      Vector_100 = seq(1:100)
      VectorSecuencia = 1:100
-----------------------------
#Punto 9.
      Vector_100_2 = seq(1,100, by = 10)
      seq( 0,100, by = 10)
      seq(0,100,10)
      