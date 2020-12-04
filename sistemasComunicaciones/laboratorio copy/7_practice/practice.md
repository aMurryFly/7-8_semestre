# Universidad Nacional Autónoma de México 

## Distorsión Alineal



**Objetivos**:

1. Conocer la influencia que tienen los elementos eléctricos o electrónicos no lineales en la
transmisión de señales de comunicaciones.
2. Reconocerá la diferencia entre distorsión lineal y alineal.
3. Conocerá el origen de la distorsión alineal.
4. Identificará los tipos de distorsión alineal existentes.
5. Habrá aprendido a cuantificar la distorsión alineal.
6. Reconocerá que los dispositivos alineales tienen aplicaciones que pueden ser de gran
utilidad.



**Lista de experimentos realizada a través de simulación numérica:**

1. Verificación de la Alinealidad del circuito.
2. Obtención y medición de la Distorsión Armónica.
3. Obtención de la Distorsión por Intermodulación.



**Desarrollo** 

1. **Utilizando multisim, y con los datos señalados, simule el comportamiento del circuito de la figura 7.1. Explique qué función realiza el circuito y qué señales se observan en los instrumentos XSC1 y XSA1**

![image-20201120075450987](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201120075450987.png)



**Explicación**:

El circuito al utilizar un OPAM del tipo amplificador e inversor, lo que obtenemos es una señal de salida amplificada y a su vez invertida (Observar la señal azul en el oscilosocpio de la imagen previa). Las señales que se observan son senoidales solo que la de salida es la que está siendo modificada por el operacional.



2. **Configure el osciloscopio como se muestra en la figura 7.2. En su simulación observe las señales de entrada y salida, complete la tabla 7.2. Note que la señal de entrada es senoidal y la de la salida también es senoidal.**



![image-20201120075921248](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201120075921248.png)

**NOTA**: De color azul la señal de salida, de color rojo la señal de entrada



| Periodo señal de entrada             | 999.9 us |
| ------------------------------------ | -------- |
| Periodo señal de salida              | 999.9 us |
| Frecuencia señal de entrada          | 1 [kHz]  |
| Frecuencia señal de salida           | 1 [kHz]  |
| Amplitud pico de la señal de entrada | 100 [mV] |
| Amplitud pico de la señal de salida  | 460 [mV] |
| Ganancia                             | 4.6      |



3. **Configure el analizador de espectros como se muestra en la figura 7.3. Observe que la escala vertical es de 0.1 [V/Div], note que la salida se presenta como un impulso triangular y no un impulso. ¿Cuál es la amplitud de la señal de salida? Modifique la configuración del analizador de espectros para medir con el cursor la amplitud y la frecuencia, como se muestra en la figura 7,4. Simule su circuito y anote la amplitud y la frecuencia del impulso triangular. Anote qué diferencias observo en el proceso de medición y sus comentarios.**

![image-20201121093435859](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121093435859.png)



Resultado obtenido para la obtención del impulso triangular

![image-20201121094021136](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121094021136.png)



**Observaciones**: Lo primero a destacar es que con base a lo obtenido en el paso 2 mediante el analizador de espectro y definiendo el centro (Esto con la finalidad de observar completo nuestro pulso) es como pudimos observar el impulso triangular que obtenemos como salida de nuestro circuito (OPAM ) una vez amplificada e invertida.



4. **Configure ahora el analizador de espectros como se muestra en la figura 7.5. Note que con esta configuración el impuso se ve más estrecho. Mida con el cursor la amplitud y la frecuencia de la señal. Anote sus resultados, y cómo fue la toma de mediciones en comparación con la toma de mediciones del punto anterior.**

A continuación el resultado obtenido contemplando el espectro como una delta de diract y no como impulso triangular:

![image-20201121095919129](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121095919129.png)

Resultado en el espectro:

![image-20201121100253317](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121100253317.png)

Se puede observar que teniendo una resolución de frecuencia de aproximadamente de 7 Hz además de una amplitud de resolución de 0.1 V por división, podemos observar como nuestro pulso se asemeja más a una delta de diract. La amplitud sería de 4.4 V aproximadamente.



5. **Configure el analizador de espectros para observar de 0 a 25 kHz. Aumente gradualmente la amplitud de la señal de entrada a los siguientes valores de voltaje pico: 500 mV, 1V, 5 V y 10V (modifique la escala de amplitud según sea conveniente). Incluya los cuatro oscilogramas y espectros en el mismo orden de la amplitud. Ejemplo de oscilograma y espectro, Figura 7.6 y Figura 7.7. Anote las observaciones y conclusiones de sus espectros y oscilogramas obtenidos.**



A continuación el resultado obtenido con  0.5 V

![image-20201121091945246](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121091945246.png)

 

A continuación el resultado obtenido a 1 V:

![image-20201121092731065](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121092731065.png)



A continuación el resultado obtenido a 5 V:

![image-20201121092139504](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121092139504.png)



A continuación resultado en 10 V:

![image-20201121092943689](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201121092943689.png)

**Observaciones**: Podemos observar que tenemos +-5V de alimentación como máximo en el OPAM, lo que significa que el máximo voltaje de salida debería ser 5V , sin embargo, realmente entrega 3.7 positivos y 4.3 negativos, por eso el recorte de la señal senoidal.

Por ello, el mismo recorte en la señal nos indica la saturación de la señal de salida, y por esta misma razón mientras más saturado este el OPAM más cuadrada se verá nuestra señal (Debido a que contempla menos de este).



6. **Agregue un multímetro y mida el voltaje de alterna (de la señal senoidal) a la salida de amplificador, como se muestra en la Figura 7.8. Con algunos o todos los instrumentos presentados en el circuito, realice las mediciones para obtener el porcentaje de distorsión armónica. Considere que el voltaje que proporciona el analizador de espectros es voltaje pico, y que cada impulso o Delta de Dirac representa a una señal senoidal.**

Obtención del voltaje obtenido por el analizador de espectros

![image-20201127073856858](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127073856858.png)

Ecuación a utilizar para obtnener la Distorción Alineal: 

$$
\%DA = \frac{\sqrt{V_T^2-V_F^2}}{V_F}*100
$$


Obteniendo voltaje rms de 
$$
FC = \frac{V_p}{Vrms} =>  Vrms = \frac{V_p}{FC} = \frac{5.079}{\sqrt{2}}=3.59
$$


Sustituyendo en la primera expresión:
$$
\%DA = \frac{\sqrt{(3.926)^2-(3.59)^2}}{(3.59)}*100 = 44.16
$$


7. **Incorpore dos filtros paso altas después del amplificador, Figura 7.9. Anote el oscilograma y el espectro de la señal de salida del primer circuito RC. Realice las mediciones necesarias para calcular el porcentaje de distorsión.**

![image-20201127080931129](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127080931129.png)



Ecuación a utilizar para obtnener la Distorción Alineal: 
$$
\%DA = \frac{\sqrt{V_T^2-V_F^2}}{V_F}*100
$$


Obteniendo voltaje rms de 
$$
FC = \frac{V_p}{Vrms} =>  Vrms = \frac{V_p}{FC} = \frac{2.263}{\sqrt{2}}= 1.6001
$$


Sustituyendo en la primera expresión:
$$
\%DA = \frac{\sqrt{(1.993)^2-(1.6001)^2}}{(1.6001)}*100 = 74.26\%
$$


8. **Considere ahora la salida después del segundo filtro paso altas, entre C3 y R3. Conecte los instrumentos necesarios a la salida y calcule el porcentaje de distorsión en la nueva salida.**

![image-20201127080842676](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127080842676.png)



Ecuación a utilizar para obtnener la Distorción Alineal: 

$$
\%DA = \frac{\sqrt{V_T^2-V_F^2}}{V_F}*100
$$


Obteniendo voltaje rms de 
$$
FC = \frac{V_p}{Vrms} =>  Vrms = \frac{V_p}{FC} = \frac{0.641}{\sqrt{2}}= 0.45325
$$


Sustituyendo en la primera expresión:
$$
\%DA = \frac{\sqrt{(1.047)^2-(0.45325)^2}}{(0.45325)}*100 = 208.231\%
$$


9. **Conecte a la entrada del amplificador dos señales senoidales de 1kHz y 3.5 kHz en serie para que se sumen. La amplitud será de 2VRMS y 2.5 VRMS, respectivamente. Anote el oscilograma y espectro de la señal a la salida del amplificador, explicando la presencia de cada línea espectral. Diga qué tipo de distorsión se produce.**

A continuación se muestra todo el circuitoy su respectivos análisis mediante el osciloscopio, analizador de espectros y el multimetro en la salida:

![image-20201127084125075](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127084125075.png)

En el imagen anterior, podemos observar en el osciloscopio la suma de las señales en la salida (Señal de color azul)



Resultados obtenidos en el analizador de espectro de cada componente;

- Componente fundamental a 1 khz

![image-20201127083723544](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127083723544.png)

- Componente a 3.5 Khz

![image-20201127084554661](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127084554661.png)

A continuación una breve tabla donde se puede mostrar como es que las componentes son sumas o restas de ellas mismas (Argumento principal para poder saber que tipo de distorsión alineal es)

| Frecuencia [Khz] - Señal 1 | Frecuencia [Khz] - Señal 2 | Suma [Khz] | Resta [Khz] |
| -------------------------- | -------------------------- | ---------- | ----------- |
| 1                          | 3.5                        | 4.5*       | 2.5         |
| 2                          | 7                          | 9*         | 5           |
| 3                          | 10.5                       | 13.5       | 7.5         |
| 4                          | 14                         | 18         | 10          |
| 5                          | 17.5                       | 22.5       | 12.5        |

- Componente a 4.5 Khz*

![image-20201127084859596](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127084859596.png)



- Componente a 9*

![image-20201127085834122](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201127085834122.png)



En esta caso la distorsión alineal no es por armónicas sino **intermodular**.

Podemos observar que tenemos muchas componentes espectrales, aunque podemos observar que todas son multiplos de las 2 componentes fundamentales.



10. **Anote sus conclusiones generales de la práctica y envíe el archivo del último circuito en formato de multisim.**

En la presente práctica prendimos la influencia o efectos que tienen los distintos componentes electrónicos no lineales en la transmisión de señales de comunicaciones, además de poder diferencias entre la distorción alineal y lineal vista en la práctica previa.

Por otro lado, a través dela conversión del facotr de cresta y con ayuda del analizador de espectros es como aprendimos a cuantificar la distorsión alineal de los distintos sistemas/filtros realizados.

Por último, observamos que la distorsión alineal por armónicas a pesar de emplear filtros que sirven para poder filtrar la señal , observamos que definitivamente seguimos obteniendo una señal totalmente deformada, esto debido a alinealidad del sistema.