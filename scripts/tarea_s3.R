## Tarea semana 3
# Autor: Francisco Inostroza
# Fecha: 28-08-2026
# que hace: Evaluar la ganancia en 4 meses de un negocio segun sus ventas y costos

# 1. Vectores de venta, costos utilizados para comparar el flujo de caja del negocio en 4 meses
ventas <- c(1200000, 850000, 1500000, 950000)
costos <- c(400000, 300000, 550000, 320000)
mes <- c(1, 2, 3, 4)

# Comprobamos que todos los vectores tengan la misma extension y tipo numerico para evitar errores al operar entre ellos
class(ventas)      # Muestra el tipo de dato que contiene el vector
class(costos)
class(mes)

length(ventas)     # Cuenta la cantidad total de elementos que tiene el vector
length(costos)
length(mes)

# 2. Se pueden analizar las ventas de meses especificos
ventas[1]          # Permite evaluar los resultados del primer mes
ventas[c(2, 3, 4)] # Se evaluan los resultados de los ultimos 3 meses
ventas[-4]         # Permite excluir un mes en especifico para analizar los demas

# 3. Evaluar el requerimiento de las ventas sobre $1.000.000
ventas > 1000000
sum(ventas > 1000000)   # Muestra la cantidad de meses que lograron la meta
mean(ventas > 1000000)  # Mide la proporcion de los meses que superaron la meta

# 4. Calculamos la ganancia de cada mes 
ganancia <- ventas - costos

# 5. Estadisticas para ver como le fue al negocio
mean(ganancia)     # Muestra la ganancia promedio que dejo el negocio al mes
median(ganancia)   # Muestra el punto medio de las ganancias de los 4 meses
sd(ganancia)       # Muestra que tanto variaron las ganancias mes a mes
quantile(ganancia) # Divide las ganancias en tramos del 25%, 50% y 75%
