# PRÁCTICA Núm. 2:  ANÁLISIS ESPECTRAL DE UNA SEÑAL SENOIDAL 



## OBJETIVOS: 

1. El alumno analizará señales sinusoidales en el dominio de la frecuencia utilizando el analizador de espectros para observar el espectro de magnitud. 
2. El estudiante observará el espectro de magnitud de la señal senoidal en la simulación numérica y lo comparará con el teórico. 
3. El alumno aplicará el Principio de Superposición en el análisis espectral utilizando dos señales, para observar si se cumple este principio. 
4. El alumno realizará mediciones utilizando dB en escala de amplitud logarítmica para observar componentes espectrales que en una escala lineal no se observan. 

## Lista de Experimentos: 

1. Análisis de la señal senoidal en frecuencia. 
2. Suma de dos señales senoidales. 
3. Utilizar el principio de superposición. 
4. Medición de la amplitud de la señal en decibeles.



## Desarrollo Experimental

1. **Realice la simulación del circuito mostrado en la Figura 2.1. Anote el espectro de magnitud obtenido y compárelo con el obtenido en el punto 2 del cuestionario previo, anote sus observaciones.**

![image-20201009080144716](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009080144716.png)

**Resultados obtenidos:**

- Señal Senoidal Frecuencia 1 kHz 20 Vpp

- Oscilograma de la señal Senoidal 
  - Escala tiempo: 500 us/Div 
  - Escala 5 V/Div)

*NOTA:* En el analizador de espectro se puede observar una frecuencia de 1kHz y como valor de Voltaje el Vp de la función senoidal obtenemos 1.7 [V]



2. **Modifique el voltaje de la señal senoidal a 3 VRMS y la frecuencia a 20 kHz, Figura 2.2. Con las mediciones obtenidas calcule el factor de cresta, anote sus cálculos, resultado y conclusiones.**

NOTA: Tenemos que realizar la correspondiente relación para obtener el voltaje pico

$$
F_{cresta} = \frac {v_{pico}  } {v_{efectivo}} =>  v_{pico} = (v_{efectivo})(F_{cresta})= 4.2426 [V]
$$



![image-20201009081611504](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009081611504.png)

**Resultados obtenidos:**

- Señal senoidal. Vp =4.229 [V]  | Resolución 20 us/div y 2 V/div



*NOTA:* Lo primero que podemos observar es que el valor teórico que se obtuvo con el factor de cresta de 1.4142 es realmente cercano a lo obtenido en la simulación.

Además observamos que el análisis espectral nos confirma precisamente el valor pico.



3. **¿Cumple el espectro con el principio de superposición? Utilizando dos fuentes de AC del grupo , configurar con señales senoidales, una de 1 kHz y 2 Vpico, y la otra a 3.5 kHz y 3 Vpico, realice un experimento que justifique su respuesta. Anote el circuito, el espectro obtenido y si cumple o no con el principio de superposición.**

A continuación se muestran los 2 siguientes resultados obtenidos en el analizador de espectros:

![image-20201009083746158](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009083746158.png)

*NOTA: El valor específico fue 2 V  a 1 kHz*



![image-20201009083955969](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009083955969.png)



**Resultados obtenidos:**

- En la parte del analizador de espectro se mostraron 2 deltas de dirac en el espectro, una se presentó en la frecuencia 1kHz y 3.5 kHz.
- Además y como resultado, notamos como se cumple el principio de superposición, donde sabemos que la suma de dos señales o funciones períodicas nos da como resultado otra señal periódica.



4. **Realice el punto anterior utilizando dos generadores de funciones para generar las señales, considere que los dos generadores están referenciados internamente a tierra física (algunos generadores no están referenciados internamente a tierra, por lo que se recomienda siempre verificar para garantizar un uso correcto). Incluya circuito, y espectro de magnitud.**

![image-20201009085506256](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009085506256.png)



![image-20201009085542900](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201009085542900.png)

5. **Justifique matemáticamente la respuesta del punto 4 y comparé con sus resultados.**

   

   $$
   v_1(f)= 2.8284 \delta(f-1) [V{rms}]\\
   v_2(f)= 4.2426 \delta(f-3.5) [V{rms}]\\
   v_3(f)=2.8284 \delta(f-1) +  4.2426 \delta(f-3.5)[V{rms}]\\
   $$

   Dado lo anterior y comparando respecto a lo obtenido mediante la simulación, observamos como es que sí se cumple el principio de superposición:
   $$
   f(x_1+x_2)= f(x_1) + f(x_2) \\
   $$
   
6. **Las suma de las dos señales senoidales observadas ¿es una señal periódica? De ser afirmativa su respuesta ¿cuál es la frecuencia de la señal? Incluya su oscilograma incluyendo el período de la señal, si es que lo hay. **

   ![image-20201016073323858](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016073323858.png)

   NOTA: De cresta a cresta tenemos 2.008 milisegundos

   
   $$
   frecuencia= \frac {1} {tiempo} = 498 Hz
   $$
   Además y como hemos visto previamente, al tener la suma de dos señales senoidales periódicas, sabemos que por el principio de superposición y comprobando con el análisis espectral de la señal resultante, tenemos como resultado una señal periódica.

   

7. **Sin modificar las amplitudes de las señales, configure a 3.5 kHz las dos señales, observe el espectro y anote sus observaciones. **

![image-20201016075901242](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016075901242.png)

*NOTA:* En el espectro se observa la suma de los voltaje pico de ambas señales por lo que sólo aparece una delta de dirac donde se puede observar la suma de la amplitud



8. **Configure los generadores a las siguientes especificaciones: los dos generadores producirán señales senoidales, una a 1kHz y 10 volts pico-pico, la otra señal senoidal será de 2 kHz y con amplitud de 50 mV pico-pico. Anote su circuito y el espectro. Junto con sus observaciones. **

![image-20201016080834620](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016080834620.png)





![image-20201016081124163](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016081124163.png)



*NOTA:* Lo primero que podemos observar es que debido a lo equeña que es una de las señales puedes ser casi imperceptible dentro del oscilograma, sin embargo, al momento de hacer el análisis mediante el analizador de espectros observamos cada uno de los voltajes pico de cada señal.



9. **Cambie la escala del analizador de espectros a dB y mida la diferencia de amplitud de las dos componentes espectrales en decibeles. Utilice una conversión matemática para calcular el valor del voltaje de la señal de 2 kHz, conociendo el voltaje de la señal de 1 KHz. Incluya sus cálculos y comentarios. **


$$
x = 2log_ { 10} \frac {v_ {1 }  } {v_ {2 } } = 2log_ { 10} (v_ {1 }) - 2log_ { 10} (v_ {2 })= v_ {1 } [dB] - v_ {2} [dB]
$$


![image-20201016083810566](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016083810566.png)



![image-20201016083732713](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201016083732713.png)

*NOTA:* Podemos observar que la escala en dB nos permite observar señales con amplitudes muy pequeñas, además y como ventaja del análisis esto no altera o modifica el voltaje de las señales.

Valores obtenidos

$$
X_1 = 13.979[dB]\\
X_2 = -32.042[dB]\\
$$

Cálculo de voltaje

$$
X_2 - X_1 = 2log(\frac {V_2} {V_1} ) [dB]
$$

Despejando y obteniendo resultado

$$
V_2=V_1(10^\frac {X_2 - X_1}{20})=(10)(10^\frac {-32.042 - 13.979}{20})= 0.047 [V] = 47 [mV]
$$




Lo cual es bastante aproximado al valor de 50 mV dado en el punto 8.



10. **Conclusiones y comentarios**

En la presente práctica aprendimos la importancia del análisis en frecuencia además de las diferentes escalas que se pueden utilizar con el objetivo principal de analizar distintas señales y sobre todo la interacción que estas pueden tener entre si.

Incluso se destacan en varios ejercicios las ventajas que ofrece por ejemplo la escala en dB para poder visualizar señales muy pequeñas sin que ssean alteradas, además y como parte también importante de esta práctica, observamos la importancia de tener siempre en mente el principio de superposición pues es este el que nos llevará a comprobar resultados obtenidos mediante un sustento totalmente matemático.