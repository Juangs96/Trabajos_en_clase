library("DBI")
library("odbc")
library("dbplyr")
library("ggplot2")
library("dplyr")

install.packages("DBI")
install.packages("odbc")
install.packages("dbplyr")

DB_Northwind <- DBI::dbConnect(odbc::odbc(),
                                Driver = "SQL Server",
                                Server = "dbtedamssql.uh.ac.cr",
                                Database = "Northwind",
                                UID = rstudioapi::askForPassword("Database user"),
                                PWD = rstudioapi::askForPassword("Database password"),
                                Port = 1433)

Orders <- dbGetQuery(DB_Northwind,"select * from [sales].[orders]")



Orders$order_date <- as.Date(Orders$order_date)
View(Orders)
ggplot(Orders,x=)

Orders = mutate(Orders, Mes_pedido=as.numeric(format(Orders$order_date,'%m')))
Orders = mutate(Orders, Año_pedido=as.numeric(format(Orders$order_date,'%Y')))

dataAgrupada = Orders%>%group_by(Año_pedido,Mes_pedido)%>%
  summarise(Q_Ordenes=n())
View(dataAgrupada)

Serie = dataAgrupada%>%
  select(Año_pedido,Mes_pedido,Q_Ordenes)%>%
  filter(Año_pedido == 2016)
View(Serie)

ggplot(data = Serie, aes(x = Mes_pedido, y = Q_Ordenes)) +
  geom_line() +
  labs(x = 'Mes', y = 'Ordenes') +
  scale_x_continuous(breaks = seq(1,12,by = 1)) +
  scale_y_continuous(breaks = seq(0,80, by = 4))

years = c(2016,2017,2018)
dataAgrupada%>%
  filter(Año_pedido%in%years)%>%
  ggplot(aes(x=Mes_pedido,y=Q_Ordenes)) +
  geom_line()+
  labs(x = 'Mes', y = 'Ordenes') +
  scale_x_continuous(breaks = seq(1,12,by = 1)) +
  scale_y_continuous(breaks = seq(0,80, by = 4))

ggplot(data = dataAgrupada, aes(x = Mes_pedido, y = Q_Ordenes,color=Año_pedido)) +
  geom_line() +
  labs(x = 'Mes', y = 'Ordenes') +
  scale_x_continuous(breaks = seq(1,12,by = 1)) +
  scale_y_continuous(breaks = seq(0,80, by = 4))

