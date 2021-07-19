#trabajamos en los datos  
attach(BD_casas) #accede a varibles de BD
pairs(BD_casas[,3:6])#selecciona las variables
options(scipen = 999)#quita notacion cientifica
#relacion entre variables

cor(sqft_living,price)#matriz de correlaciones entre precio y superficie
cor(sqft_living,bathrooms)#matriz de correlaciones entre precio y Q_baños

#modelo de regresion 
RS_price <- lm (price~sqft_living)#modelo regresion simple
RS_bathroom <- lm (bathrooms~sqft_living)#modelo regresion simple


plot(sqft_living,price, xlab="superficie", ylab="precio",main="regresion lineal")#grafico
abline(RS, col="red")#linea de regresion

predict(RS,data.frame(sqft_living=800))#predecimos el precio segun el tamaño