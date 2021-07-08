#Practica 3

#1.Grafico de barras

Punto1 = Ventas_libros

plot(x=as.factor(Punto1$Genre))

#Muestra la cantidad total de libros de ficcion y no ficcion.

#2.

Punto2 = Ventas_libros

mis_fechas <- seq(as.Date("2014/1/1"), by = "month", length = 50 ) 
plot(mis_fechas,rnorm(50), type = "l")

#3.

plot(x = Punto2$Reviews, y = Punto2$`User Rating`)