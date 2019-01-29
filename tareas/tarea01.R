#Si hubiéramos empezado a contar segundos a partir 
#de las 12 campanadas que marcan el inicio de 2018, 
#¿a qué hora de qué día de qué año llegaríamos a los 
#250 millones de segundos? ¡Cuidado con los años bisiestos!

# Datos de entrada
num_seg <- 250000000

# Cálculos 
seg_año = 365 * 24 * 60 * 60

años = num_seg %/% seg_año

# El primer año bisiesto solo tarda dos años
años_bis =(años +2) %/% 4

año_busq = 2018 + años

# hay que restarle 2 a los días que ya hemos contabilizado aquí

seg_sob = num_seg %% seg_año

num_min <- seg_sob %/%60
num_seg_sobr <- seg_sob %%60

num_horas <- num_min %/%60
num_min_sob <- num_min %%60

num_dias <- ((num_horas %/% 24) - años_bis)
num_horas_sobr <- num_horas %% 24

#

# Datos de salida
print (paste(sprintf("%i millones de segudos 
              llegarían en año %i, 
              el día %i, a las %i:%i:%i", 
      num_seg, año_busq, num_dias, num_horas_sobr, num_min_sob,
      num_seg_sobr)))











