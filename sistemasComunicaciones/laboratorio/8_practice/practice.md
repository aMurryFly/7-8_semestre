# Universidad Nacional Autónoma de México

## Práctica Núm. 8 : Filtros Eléctricos 



**Alumno:** Alfonso Murrieta Villegas



1. **Utilizando multisim, simule el comportamiento del circuito de la figura 8.3. Configure el generador de funciones para generar una señal senoidal, amplitud de 2 Vpp y frecuencia de  MBG/DFVS 2 100 Hz, sin voltaje de offset, como se muestra en la figura 8.4. Mida el voltaje pico a la salida del osciloscopio y anote el valor de éste:** 

![image-20201211072810635](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211072810635.png)

![image-20201211073103241](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211073103241.png)

**Valor pico:** 999.895 [mV]



2. **En el circuito que se está simulando, Figura 8.3, varíe la frecuencia de la señal senoidal, y complete la Tabla 8.1. Mida el voltaje pico del capacitor y considere que es el voltaje de salida.**

| Frecuencia [Hz] | Vpico (Vin) [V] | Vpico (Vout) [mV] |
| --------------- | --------------- | ----------------- |
| 100             | 1               | 999.8             |
| 500             | 1               | 995.046           |
| 1000            | 1               | 980.617           |
| 2000            | 1               | 928.59            |
| 4000            | 1               | 781.161           |
| 6000            | 1               | 640.762           |
| 8000            | 1               | 530.322           |
| 10000           | 1               | 451.36            |
| 12000           | 1               | 372.27            |
| 14000           | 1               | 317.5             |
| 16000           | 1               | 279.96            |
| 18000           | 1               | 247.79            |
| 20000           | 1               | 229.09            |



3. **Grafique los datos de la Tabla 8.1, tome a la frecuencia como variable independiente y el voltaje del capacitor como variable dependiente. En la gráfica identifique el punto donde la amplitud del voltaje del capacitor es el 70.71% del voltaje máximo. Anote el punto (f, Vout).**



![img](https://media.discordapp.net/attachments/726115940458037279/786957837020168202/unknown.png)

Imagen 1: En Y Voltaje de salida [V] y en X Frecuencia [Hz]



**Vmax** = 0.998

**70.71% Vmax** = 0.706 (Estaría entre 4000 y 6000 de frecuencia Hz)



4. **Realice la simulación del filtro paso bajas como se indica en la Figura 8.6. Observe el diagrama de Bode, parecido al de la Figura 8.7, mueva el cursor para medir la frecuencia cuando la respuesta del filtro presente una caída de 3 dB. Anote dicha frecuencia y compárela con la frecuencia de corte teórica.**

![image-20201211082852659](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211082852659.png)

**Frecuencia de corte experimental:** 4.993 [kHz]

**Frecuencia de corte teórica:**
$$
FrecuenciaCorte = \frac { 1 } { 2*pi*RC} = \frac { 1 } { 2*pi*(318000)*(0.1x10^-9)}=5004.87 kHz
$$
Podemos observar que el resultado experimental es bastante cercana a la teórica con una diferencia menor al 10%.



5. **Cambie de posición los elementos R y C, vuelva a simular, Figura 8.8, y observe el Diagrama de Bode, figura 8.9. Coloque nuevamente el cursor cuando éste marque una caída de tensión de 3 dB, o un valor aproximado. Anote sus observaciones y conclusiones.**

![image-20201211083600304](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211083600304.png)

Aquí podemos observar como es que al cambiar de posiciones el capacitor y la resistencia hacemos que nuestro filtro cambie de paso altas a paso bajas y viceversa.



6. **Ingrese a la página electrónica de Analog Filter Wizard y obtenga 2 gráficas para un filtro paso banda, donde 3,000≥ f ≥300, una para aproximación Chebyshev y la otra para una aproximación Bessel. Incluya sus gráficas y explique qué significa cada parte o zona de ella.**

**Bessel**:

![img](https://media.discordapp.net/attachments/726115940458037279/786967354143539231/besel.PNG?width=1106&height=423)

**Chebyshev**:

![img](https://media.discordapp.net/attachments/726115940458037279/786967360938049546/cheb.PNG?width=1106&height=419)

En la región pasabandas podemos observar distintos comportamientos que realmente están asociandos el tipo de filtro, por ejemplo, en el caso del Bessel observamos que la respuesta es maximamente plana mientras que en el caso del Chebyshev tiene una mayor inestabilidad en su respectiva zona de operación aunque esto debemos considerarlo debido también al orden del circuito.



7. **Utilizando la misma página obtenga la respuesta en frecuencia de un filtro paso altas de frecuencia de corte de 10 kHZ, y una banda de supresión de 40 dB. Incluya su gráfica y la interpretación de ésta.**

![image-20201211134004639](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211134004639.png)

**Interpretación**:

Podemos identificar que la banda de supresión es 40 [dB], además de que se puede ver el falldown del pasabandas en la región "Stopband".



8. **Para el filtro activo anterior anote que aproximación utilizó, el orden del filtro y el circuito electrónico.**

![image-20201211134703149](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211134703149.png)

Con base el diagrama esquemático anterior, observamos  un filtro de tipo Butterworth de cuarto orden en 2 etapas



9. **Con el programa Filter Wiz Lite Free obtenga una gráfica de la respuesta a la frecuencia de un filtro supresor de banda, con banda de supresión de 40 dB, incluya en ella por lo menos tres aproximaciones. Explique la gráfica obtenida.**

A continuación se presentan las capturas de pantalla de la definición del filtro además de sus correspondientes tipos o aproximaciones:

![image-20201211181403394](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211181403394.png)

A continuación cada una de las aproximaciones:

| Chebyshev                                                    | Chebyshev (Invertido)                                        | Cauer o Elíptico                                             |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| ![image-20201211181731796](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211181731796.png) | ![image-20201211181713331](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211181713331.png) | ![image-20201211181652939](C:\Users\alfon\AppData\Roaming\Typora\typora-user-images\image-20201211181652939.png) |



10. **Anote sus conclusiones y comentarios de la práctica, incluyendo el manejo del software, diferencias esenciales y ¿cuál le gustó más utilizar?, ¿por qué?**



Sin duda en esta práctica aprendimos que al modificar las frecuencias afectan directamente la forma o salida una vez que pasan las señales a través de nuestros filtros. de hecho, específicamente observamos la relación que existe en nuestra salida respecto a caídas por ejemplo de 3 dB.

Por otro lado, al comparar los distintos tipos de filtros , observamos sus diferencias desde cómo están compuestos sus circuitos hasta cómo es que varían sus zonas o bandas.

Por último, conocimos algunos programas para el diseño de filtros que sin duda alguna nos servirán en futuras prácticas

