-----------------------------------------------------------------
#################################################################

 Laboratorio_30- Datos ordenados- (merge) FUNDIR dos bases de datos

#################################################################
------------------------------------------------------------------

# Llamar libreria de data.table
library(data.table)

#Localizar ruta de archivos
choose.files()

# Rutas de alas dos bases a unir se crea una variable por cada una
green.products <- read.csv("C:\\Users\\gusta\\OneDrive\\Documents\\GitHub\\JPAS_LABS30\\INPUT\\green products.csv")
all.products <- read.csv("C:\\Users\\gusta\\OneDrive\\Documents\\GitHub\\JPAS_LABS30\\INPUT\\COMPLETE_YEARS_PRODUCTS.csv")

#Leer como dataframe o tabla de datos
green.products <- as.data.table(green.products)
all.products <- as.data.table(all.products)

# HACER MERGER Unir ambas tablas mediante las variables comunes
merge.allproducts = merge(all.products, green.products, by = "product_code")

head(merge.allproducts)

# Unir todo. Visualizar resultado de todo
merge.full = merge(all.products, green.products, by = "product_code", all.x = T)
head(merge.full)

# Exportar resultado obtenido como csv
write.csv(merge.full, file = "merge.full.csv")

#Exportar otras tablas obetnidas como csv
write.csv(all.products, file = "LAB30_allproducts.csv")
write.csv(green.products, file = "LAB30_greenproducts.csv")
write.csv(merge.allproducts, file= "LAB30_mergeallproducts.csv")
write.csv(merge.full, file = "LABS30_mergefull.csv")

