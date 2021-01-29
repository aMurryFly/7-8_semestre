# PRÁCTICA Núm. 9: RUIDO

#### Objetivos:

1. Observar el ruido eléctrico a partir de su análisis en el tiempo y en la frecuencia.
2. Conocer el concepto de ruido blanco.
3. Habrá escuchado el ruido a distintas frecuencias.
4. Habrá observado oscilogramas y espectros de ruido a diversas frecuencias.
5. Conocerá los conceptos de Cifra de Ruido y Relación Señal/Ruido.
6. Conocerá el ruido pseudoaleatorio.

#### Desarrollo de la práctica

1. **Ingrese al enlace** https://es.wikipedia.org/wiki/Ruido_de_color **y escuche el ruido blanco. Incluya el espectro de amplitud de éste, anote sus características y dónde ha escuchado antes este tipo de ruido.**

<img src="https://upload.wikimedia.org/wikipedia/commons/0/02/White_noise_spectrum.png" alt="img" style="zoom:50%;" />

Como característica principal tiene que sus valores de la señal en dos tiempos diferentes no guardan correlación estadística, es por ello que su densidad espectral de potencia o PSD es una constante, es decir, su gráfica es plana.



2. **Escuche el ruido rosa, marrón, azul, violeta y gris. Anote el espectro de amplitud de cada uno de ellos, sus características y diferencias.**

| Ruido         | Espectro de amplitud                                         | Características y diferencias                                |
| ------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| Ruido Rosa    | <img src="https://upload.wikimedia.org/wikipedia/commons/7/7a/Pink_noise_spectrum.png" alt="img" style="zoom:50%;" /> | Es un ruido cuyo nivel de presión sonora está caracterizado por una densidad espectral inversamente proporcional a la frecuencia. (1/f) |
| Ruido marrón  | <img src="https://upload.wikimedia.org/wikipedia/commons/1/1e/Brown_noise_spectrum.png" alt="img" style="zoom:50%;" /> | A diferencia del ruido rosa este ruido tiene una caida mucho más abrupta |
| Ruido azul    | <img src="https://upload.wikimedia.org/wikipedia/commons/5/55/Blue_noise_spectrum.png" alt="img" style="zoom:50%;" /> | Su PSD es directamente proporcional a F o dicho de otra forma se incrementa 3 dB por octava a medida que subimos en frecuencia. |
| Ruido violeta | <img src="https://upload.wikimedia.org/wikipedia/commons/8/87/Purple_noise_spectrum.png" alt="img" style="zoom:50%;" /> | Su PSD es directamente proporcional a F*F                    |
| Ruido gris    | <img src="https://upload.wikimedia.org/wikipedia/commons/7/75/Gray_noise_spectrum.png" alt="img" style="zoom:50%;" /> | Su PSD es muy similar a la curva de ponderación sofométrica. Esta curva corresponde al nivel de presión sonora que debería tener cada frecuencia para que todas fuesen percibidas con la misma intensidad aparente por el oído humano |



3. **Anote a qué sonidos se parecen o le recuerdan cada uno de los 6 ruidos anteriores.**

| Ruido         | Sonidos similares                                          |
| ------------- | ---------------------------------------------------------- |
| Ruido Rosa    | Suena similar a el echo generado por cigarras en una cueva |
| Ruido marrón  | Suena al ruido de un televisor                             |
| Ruido azul    | Suena similar a la lluvía                                  |
| Ruido violeta | Suena al ruido de un televisor                             |
| Ruido gris    | Suena al ruido de una radio4.                              |

NOTA: Particularmente pienso, que este apartado es algo subjetivo respecto a lo que pensamos a que se asimila o parece el ruido.



4. **Utilizando multisim simule el circuito de la figura 9.1. La fuente es de ruido térmico. Observe la señal en el Analizador de Espectros y anote qué tipo de señal observa.**

![image-20210108075715137](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108075715137.png)

Resultado obtenido en el osciloscopio:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108075859968.png" alt="image-20210108075859968" style="zoom:67%;" />



Resultado obtenido en el analizador de espectro:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108075944653.png" alt="image-20210108075944653" style="zoom:67%;" />



El ruido térmico o ruido de Nyquist  es puede apreciar que se aproxima al ruido blanco, lo que significa que su densidad espectral de potencia es casi plana, además de que  la amplitud de la señal sigue una distribución gaussiana.



5. **Más importante que conocer la potencia del ruido es comparar la potencia del ruido con la potencia de la señal de interés. Una de las características más importantes en un sistema de comunicaciones es la Relación Señal a Ruido por lo general se expresa en decibeles.** 

  ![image-20210108074431931](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108074431931.png)

  **si la señal y el ruido se miden en los mismos puntos del circuito**

  ![image-20210108074542515](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108074542515.png)

  **Simule el circuito de la Figura 9.2. Calcule en decibeles y anote la Relación Señal a Ruido (la componente espectral de la señal sinusoidal está en voltaje pico).**



![image-20210108082304307](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108082304307.png)

Resultado obtenido en el analizador de espectros:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108082333556.png" alt="image-20210108082333556" style="zoom:67%;" />



Calculo de decibles y relación señal - ruido:
$$
F.C = \frac {V_{pk}}{ \sqrt{2}} = \frac {1.429}{ \sqrt{2}} = 1.01
$$


$$
SNR[dB] = 20log_{10}(\frac {1.010}{2.037}) = -6.089
$$


6. **Modifique la configuración de las señales como se ilustra en la figura 9.3, simule el circuito con la nueva configuración. Calcule y anote nuevamente la relación señal a ruido.**

![image-20210115072247458](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115072247458.png)



Resultado obtenido en el analizador de espectros:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115072103765.png" alt="image-20210115072103765" style="zoom:67%;" />



Calculo de decibles y relación señal - ruido:
$$
F.C = \frac {V_{p}}{ \sqrt{2}} = \frac {1.416}{ \sqrt{2}} = 1.0013
$$


$$
SNR[dB] = 20log_{10}(\frac {1.001}{0.40456}) = 7.871
$$


7. **El Factor de Ruido ( F ) y la Cifra de Ruido o Figura de Ruido ( NF, Noise Figure), son indicadores de cuánto se deteriora o mejora la relación de señal a ruido cuando pasan por un circuito.**
   **El Factor de Ruido es el cociente de la relación de potencias de señal a ruido de la entrada entre la relación de potencias de la señal a ruido de la salida. Simule el circuito de la Figura 9.4 y realice las mediciones para obtener el Factor de Ruido.**

![image-20210115075820572](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115075820572.png)



Valores relavantes

| Señal                                                        | Fuente de ruido                                              |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| <img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115073438096.png" alt="image-20210115073438096" style="zoom: 45%;" /> | <img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115081019500.png" alt="image-20210115081019500" style="zoom: 80%;" /> |

Calculo de decibles y **SNR de entrada** :
$$
SNR[dB] = 20log_{10}(\frac {1.0}{1.013}) = -0.112
$$


Resultado obtenido en el analizador de espectros:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115075845070.png" alt="image-20210115075845070" style="zoom:67%;" />



Calculo de decibles y relación señal - ruido **SNR Salida**:
$$
F.C = \frac {V_{p}}{ \sqrt{2}} = \frac {0.130}{ \sqrt{2}} = 0.065
$$


$$
SNR[dB] = 20log_{10}(\frac {0.065}{0.124}) = -5.5241
$$


 **Factor de ruido**:
$$
F = \frac {-0.112}{-5.5241} = 0.0201
$$



Por lo tanto, el ruido al ser menor que uno el filtro actua como paso bajas



8. **La Cifra de Ruido o Figura de Ruido es el Factor de Ruido expresado en decibeles**

   **![image-20210108074354868](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210108074354868.png)**

   **Para el circuito de la Figura 9.4 calcule la cifra de ruido y anote sus cálculos**



$$
NF = 10log_{10}(0.0201) = -16.96 [dB]
$$


9. **Simule el circuito de la figura 9.5 para obtener ruido de baja frecuencia. Calcule la frecuencia del filtro y diga qué tipo de ruido se observa en el canal 2.del osciloscopio.**

![image-20210115084400907](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115084400907.png)



Resultado obtenido en el analizador de espectros:

<img src="C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115084527303.png" alt="image-20210115084527303" style="zoom:67%;" />

Es **ruido rosa** debido a que está actuando en las frecuencias bajas además de que se aprecia un aspecto del tipo 1/f



**Frecuencia de corte** 

$$
Frecuencia de corte = \frac {1}{2 * PI * R * C} = \frac {1}{2 * 3.141592 * 100 * 10^-{12}} = 5 MHz
$$



10. **Simulando el circuito de la Figura 9.6 obtenga un ruido pseudoaleatorio. Observe el oscilograma. Anote si en realidad se trata de ruido pseudoaleatorio, justifique su respuesta.**

![image-20210115144945539](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115144945539.png)



Con base a la imagen anterior podemos observar que si es un ruido pseudoaleatorio debido a que encontramos un patrón de repetición, a continuación el análisis matemático :


$$
Frecuencia = \frac {1}{T} = \frac {1}{0.01} = 100 MHz
$$



Por otro lado, a su vez observamos que es un ruido en bajas frecuencia

![image-20210115145436852](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20210115145436852.png)



**Conclusiones**:

En primer instancia aprendimos conceptos la Cifra de Ruido y Relación Señal/Ruido que nos apartaran a futuro datos críticos para análisis en filtros o sistemas.

Por último,el conocer acerca de los distintos ruidos y filtros es realmente importante por todo lo que implica dentro de los sistemas de comunicación de hecho y como dato interesante, uno de los ruidos más comunes dentro del SLAM o Lozalición simultanea en la  generación de ambientes es el ruido blanco que de hecho a través de filtros Kalman es como se puede erradicar. 









