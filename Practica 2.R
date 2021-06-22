#Practica 2
---------------------------
#PArte 1.
#Punto 1.
  vectorPelicula = c("Sherk","Sherk 2","Sherk tercero","Sherk Felices")
  VectorPuntuacion=c(7.9,7.2,6.1,6.3)
  VectorEstreno = c(TRUE,TRUE,FALSE,FALSE)
  
  VectorPunto1 = data.frame(vectorPelicula,VectorPuntuacion,VectorEstreno)
#Punto 2.
#Punto a
  results=c("A","A", "B", "B", "B", "B", "B","I","I","I","R","I","I","I","R","R",
            "R","R","R","R","R","R","R","R","R", "M", "M", "M", "M", "M", "M",
            "M", "M", "M", "M", "M", "M", "M","A","A")
#Punto b  
  FrecuenciaAbsoluta = table(results)
  FrecuenciaAbsoluta
#Punto c  
  FrecuenciaRelativa = FrecuenciaAbsoluta/length(results)
  FrecuenciaRelativa

#Punto 3.
  
  nombres = c("hugo","paco","luis","paty","maria","ruben","gaby")
  edades = c(28,26,32,24,33,23,43)
  sueldos = c(12.5,13.5,14.8,7.1,57.7,45.3,34.2)
  genero = c("M","M","M","F","F","M","F")
  pasatiempos = c("musica","musica","estudio","videojuegos","musica","musica","videojuegos")
  
  datos_personales = data.frame(nombres,edades,sueldos,genero,pasatiempos)
  
#Punto 4.
  
  int_vec <- c(1,2,3)
  
  char_vec <- c("a", "b", "c")
  
  bool_vec <- c(TRUE, TRUE, FALSE)
  
  Salario <- c(5000,56700,6000)
  
  AuthorDataFlair = data.frame(int_vec,char_vec,bool_vec,Salario)
  
  vec_comision = (AuthorDataFlair$Salario*1.05)
  
  print(vec_comision)
  
#Parte 2, Caso estadistico
  
  genero2 = c("M","M","M","M","M","F","F","F","F","F")
  
  edad = c(18,20,22,24,26,26,28,30,32,34)

  glucemia = c(123,230,180,164,210,220,193,202,152,185)
  
  tratamiento_antidiabeticos_orales = c(FALSE,TRUE,FALSE,FALSE,TRUE,FALSE,TRUE,TRUE,FALSE,FALSE)
  
  mispacientes = data.frame(genero2,edad,glucemia,tratamiento_antidiabeticos_orales)
----------------  
  max(glucemia)
  min(glucemia)
  mean(edad)
  sd(mispacientes$glucemia)
  #desviacion estandar o tipica, es una medida que se utiliza para cuantificar la variacion o la dispercion de un conjunto de datos numericos
  round(sd(mispacientes$glucemia),2)
  quantile(mispacientes$glucemia)
  
  FrecuenciaAbsoluta = table(mispacientes$glucemia) 
  FrecuenciaAbsoluta
  #el número de veces que aparece un valor
  FrecuenciaAbsolutaGenero = table(mispacientes$genero2)
  FrecuenciaRelativa = FrecuenciaAbsolutaGenero/length(mispacientes$genero2)
  FrecuenciaRelativa
  #El resultado de dividir la frecuencia absoluta de un determinado valor entre el número total de datos
  
#Parte 3.
  
  #Investigación sobre cómo mostrar gráficos