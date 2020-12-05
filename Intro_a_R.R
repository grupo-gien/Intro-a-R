# 1) Ejercicios de las notas de clase

# Opciones gráficas 
demo(image)
demo(persp)


# Demostraciones gráficas ofrecidas por R.
example(contour)
demo(graphics)
demo(plotmath)
demo(Hershey)


# Paquete gráfico "lattice".
require("lattice") 
demo(lattice)
example(wireframe)

# paquete gráfico "rgl".
require("rgl") 
demo(rgl) 
example(persp3d)

# Ejercicio
pH <- abs(round(rnorm(100, 5.1, 7.1),3))
O2 <- abs(round(rnorm(100, 4.1, 8.1),3))
NO3 <- abs(round(rnorm(100, 0.4, 0.8),3))
NO2 <- abs(round(rnorm(100, 0.4, 0.9),3))
PO4 <- abs(round(rnorm(100, 0.2, 0.8),3))
ambientales <- cbind(pH, O2, NO3, NO2, PO4)

edit(ambientales)

# Guardar datos en Excel
write.csv2(ambientales,"datos.csv")

# Cargar base datos de Excel en R
dir()
datos1 = read.csv2("datos.csv",row.names=1)
str(datos1)
summary(datos1)
datos1 = read.csv2(file.choose(),row.names=1)

