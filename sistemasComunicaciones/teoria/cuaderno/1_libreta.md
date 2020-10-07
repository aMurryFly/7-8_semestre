# Sistemas de Comunicaciones



### Conceptos previos:

- **Datos:** Todos los datos que te llegan del exterior

- **Información:** Lo que se transmitirán entre transmisor y receptor
  - Speech = Comunicación entre seres humanos (Habla)
  - Audio = Sonidos acomodados de forma estética
  - Imágenes 
  - Datos informáticos
  - Video

### About systems

Todos los sistemas en comunicaciones se conforman por :

Fuente Info.- **Transmisor(Tx)** - Canal - **Receptor(Rx)** - Usuario Final

​								*(Entrada)* - - *(Salida)*

​										x(t) - h(t) - y(t)

h(t) = Función de transferencia 

### Generalización principales

- Potencia = Intensidad de la señal que tendrá desde el transmisor hasta el receptor
- Ancho de banda = Rango de frecuencias para que pueda operar el canal



------



## Canales de Propagación

- Sistemas Guiados "Alambricos"
  - UTP(Ethernet)
  - Fibra óptica
  - Coaxial

- No guiados "Inalambricos"
  - Aire
  - Agua 
  - Vacío



## Efectos que alteran la comunicación 



- Limitaciones (Impide complemente la comunicación entre A y B )
  - **Ancho de banda: ** Segmentos o rango de frecuencia en un determinado período.
  - Ruido 
  - Atenuación (Hay de tipo positvo-ganancia y negativa-perdida )

- Alteraciones
  - Atenuación 
  - Distorción
  - Interferencia (Cuando el receptor no sabe a que emisor tomar en cuenta )
  - Ruido



## Sistemas y servicios moderno de comunicaciones

La clasificación de estos son:

- Radiodifución (Llega de forma gratuia, sólo instalas antena)

  - Televisión abierta
  - Radio

- Telecomunicaciones 

  - Telefonía
    - Móvil
      - 2G / 3G / ...
    - Fija
      - Teléfono
      - Internet
  - Televisión restringida

  

Conmutación por circuitos (Telmex):

- En un mismo canal viajan hasta 8 señales distintas conmutadas, usan el mismo ancho de banda 



Conmutación de paquetes

- El 4G debe ser por este tipo de paquetes además de que el núcleo debe ser por fibra óptica



## Onda Electromagnética

Es un fenómeno que se gnerada por la corriente electrica que cruza a través de un medio,a demás de tener un campo eléctrico y un campo magnético.



**Espectro Radioeléctrico: ** 

![image-20201003101155175](/Users/alfonsomurrietavillegas/Library/Application Support/typora-user-images/image-20201003101155175.png)

Lo consideramos hasta los 3 mil Ghz debido a la seguridad permitida para el ser humano.



NOTA: Si se tiene banda de 5 GHZ mandar ahí el streaming



## Modelo OSI (Open System Intercomunication)

Es un modelo de 7 capas:

7) **Aplicación** = Lo necesario para leer el mensaje 

6) **Presentación** = El formato de la información (xls / .doc )

5) **Sesión** = Determinará todas las reglas necesarias para checar si se tendrá o no acceso (SQL /.NET)

4) **Transporte** = Qué tecnología se empleará para transportar paquetes (TCP / UDP) 

3) **RED** = Direccionamiento lógico (Capa IP)

2) **Enlace** = Determina todo lo que se requiere para poder hacer enlace entre distintos puntos (MACADRESS / X.25)

1) **Física** = Los elementos tangibles que tendrán que usar para comunicarse (Ethernet / RJ45)











