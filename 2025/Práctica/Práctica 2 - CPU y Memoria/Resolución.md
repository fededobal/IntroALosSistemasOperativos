# Trabajo Práctico 2

## Introducción a los Sistemas Operativos

1.
   1. un **sistema operativo (SO)** es el software fundamental que actúa como intermediario entre el hardware de una computadora y el usuario o las aplicaciones. su objetivo principal es gestionar los recursos del sistema (CPU, memoria, dispositivos de E/S) de manera eficiente y proporcionar un entorno en el que los programas se puedan ejecutar.
   2. para que un sistema operativo pueda cumplir sus objetivos, necesita interactuar con los siguientes componentes de hardware esenciales:
      * **CPU (Unidad Central de Procesamiento):** ejecuta las instrucciones del SO y de los programas.
      * **Memoria Principal (RAM):** almacena temporalmente los datos y las instrucciones que la CPU necesita para trabajar.
      * **Dispositivos de Almacenamiento Secundario:** (discos duros, SSD) almacenan el SO, los programas y los datos de forma permanente.
      * **Dispositivos de Entrada/Salida (E/S):** permiten la interacción con el usuario (teclado, mouse) y otros sistemas (tarjetas de red).
      * **Temporizador (Timer):** permite al SO recuperar el control de la CPU para evitar que un proceso monopolice el sistema.
   3. los componentes software principales de un sistema operativo incluyen:
      * **Kernel (Núcleo):** es el corazón del SO, gestionando las tareas más críticas como la planificación de procesos y el acceso al hardware.
        * **Gestión de Procesos:** se encarga de crear, eliminar, suspender y reanudar procesos, así como de la comunicación y sincronización entre ellos.
        * **Gestión de Memoria:** asigna y libera espacio en la memoria RAM para los procesos que lo necesiten.
        * **Gestión del Sistema de Archivos:** organiza los archivos en los dispositivos de almacenamiento y controla su acceso.
        * **Gestión de Entrada/Salida (E/S):** administra la comunicación con los dispositivos periféricos.
      * **Interfaz de Usuario:** puede ser una línea de comandos (CLI) o una interfaz gráfica (GUI), permitiendo al usuario interactuar con el SO.
   4. una **llamada al sistema** es el mecanismo que utiliza un programa para solicitar un servicio al kernel del sistema operativo. es la interfaz fundamental entre un proceso y el SO.

      se implementan mediante **interrupciones por software** (traps). cuando un programa ejecuta una system call, la CPU pasa del modo usuario al **modo kernel**, permitiendo al SO ejecutar la tarea privilegiada solicitada (como leer un archivo o crear un proceso) de forma segura.
   5. **Programa:** es una entidad **pasiva**. es un conjunto de instrucciones escritas en un lenguaje de programación y almacenadas en un archivo ejecutable en disco.

      **Proceso:** es una entidad **activa**. es una instancia de un programa en ejecución. un proceso incluye no solo el código del programa, sino también su estado actual, como el valor del contador de programa, los registros de la CPU y los datos en su espacio de memoria.
   6. la información mínima que el kernel debe mantener sobre un proceso se almacena en una estructura de datos llamada **Bloque de Control de Proceso (PCB - Process Control Block)**. esta incluye:
      * **Identificador del Proceso (PID):** un número único para identificar al proceso.
      * **Estado del Proceso:** (ej. listo, en ejecución, esperando).
      * **Contador de Programa (PC):** la dirección de la próxima instrucción a ejecutar.
      * **Registros de la CPU:** valores de los registros para restaurar el proceso.
      * **Información de planificación:** prioridad del proceso.
      * **Información de gestión de memoria:** punteros a las tablas de páginas o segmentos.
      * **Información de E/S:** dispositivos asignados al proceso, archivos abiertos.
   7. los algoritmos de planificación buscan optimizar el uso de la CPU y la experiencia del usuario, persiguiendo los siguientes objetivos:
      * **Justicia (Fairness):** asegurar que cada proceso reciba una porción justa de tiempo de CPU.
      * **Maximizar la utilización de la CPU:** mantener la CPU ocupada el mayor tiempo posible.
      * **Maximizar el Throughput:** completar la mayor cantidad de procesos por unidad de tiempo.
      * **Minimizar el Tiempo de Retorno (Turnaround Time):** reducir el tiempo total que tarda un proceso desde que llega hasta que finaliza.
      * **Minimizar el Tiempo de Espera (Waiting Time):** reducir el tiempo que un proceso pasa en la cola de listos.
      * **Minimizar el Tiempo de Respuesta (Response Time):** reducir el tiempo desde que se hace una solicitud hasta que se produce la primera respuesta.
   8. **No Apropiativo (Non-Preemptive):** una vez que la CPU se le asigna a un proceso, este la conserva hasta que la libera voluntariamente, ya sea porque terminó su ejecución o porque está esperando una operación de E/S.

      **Apropiativo (Preemptive):** el sistema operativo puede "quitarle" la CPU a un proceso en ejecución (por ejemplo, cuando se le acaba su quantum de tiempo) para dársela a otro proceso de mayor prioridad que está listo.
   9. **i. Short Term Scheduler (Planificador a Corto Plazo):** también conocido como planificador de CPU. selecciona cuál de los procesos que están en la cola de listos (en memoria RAM) pasará a ejecutarse en la CPU. se ejecuta con mucha frecuencia.

      **ii. Long Term Scheduler (Planificador a Largo Plazo):** también conocido como planificador de trabajos. decide qué procesos del conjunto de trabajos en disco serán cargados en la memoria para competir por la CPU. controla el grado de multiprogramación y se ejecuta con poca frecuencia.

      **iii. Medium Term Scheduler (Planificador a Mediano Plazo):** se encarga del *swapping*. puede sacar temporalmente un proceso de la memoria principal y llevarlo a disco (swap out) para reducir el grado de multiprogramación y liberarla. más tarde, puede reintroducirlo (swap in) para que continúe su ejecución.
   10. **Dispatcher:** es el módulo que cede el control de la CPU al proceso seleccionado por el *Short Term Scheduler*. sus tareas son:
       1. realizar el cambio de contexto (guardar el estado del proceso saliente y cargar el del entrante).
       2. cambiar al modo usuario.
       3. saltar a la ubicación adecuada en el programa del nuevo proceso para reiniciar su ejecución.

       **Loader:** es un programa del sistema encargado de cargar un programa ejecutable desde el almacenamiento secundario (disco) a la memoria principal (RAM) para que pueda ser ejecutado por la CPU.
   11. **Proceso CPU Bound:** es un proceso que pasa la mayor parte de su tiempo realizando cálculos y usando la CPU. sus ráfagas de uso de CPU son largas y rara vez realiza operaciones de E/S.

       **Proceso I/O Bound:** es un proceso que pasa la mayor parte de su tiempo esperando que se completen operaciones de entrada/salida. sus ráfagas de CPU son cortas, seguidas de largas esperas por E/S.
   12. un proceso atraviesa distintos estados a lo largo de su ciclo de vida:
       * **Nuevo (New):** el proceso está siendo creado.
       * **Listo (Ready):** el proceso está en memoria principal, esperando que se le asigne la CPU para ejecutarse.
       * **En Ejecución (Running):** el proceso tiene el control de la CPU y está ejecutando sus instrucciones.
       * **En Espera (Waiting/Blocked):** el proceso está esperando que ocurra un evento, como la finalización de una operación de E/S.
       * **Terminado (Terminated):** el proceso ha finalizado su ejecución.

       **Diagrama de Transiciones:**
       1. **Nuevo → Listo:** el *Long Term Scheduler* admite un nuevo proceso en el sistema.
       2. **Listo → En Ejecución:** el *Short Term Scheduler* selecciona el proceso para que use la CPU.
       3. **En Ejecución → Listo:** el proceso es interrumpido (ej. se acaba su quantum de tiempo) por el planificador apropiativo.
       4. **En Ejecución → En Espera:** el proceso solicita una operación de E/S y debe esperar a que termine.
       5. **En Espera → Listo:** el evento por el que esperaba (ej. fin de E/S) ha ocurrido.
       6. **En Ejecución → Terminado:** el proceso completó su tarea.
   13. **Long Term Scheduler:** controla la transición de **Nuevo → Listo**.

       **Short Term Scheduler:** controla la transición de **Listo → En Ejecución**.

       **Medium Term Scheduler:** controla las transiciones hacia y desde un estado "Suspendido" (no mostrado en el diagrama simple), sacando procesos de los estados **Listo** o **En Espera** hacia el disco.
   14. **Tiempo de Retorno (TR):** es el tiempo total que un proceso pasa en el sistema, desde que llega hasta que finaliza por completo. se calcula como:

       *TR = Tiempo de Finalización − Tiempo de Llegada*

       **Tiempo de Espera (TE):** es la suma de todos los períodos de tiempo que un proceso pasa en la cola de listos, esperando por la CPU. se puede calcular como:

       *TE = TR − Tiempo de Ráfaga (CPU)*
   15. para un lote de n procesos, se calculan como el promedio de los tiempos individuales:
       * **Tiempo Promedio de Retorno (TPR):**

         **![][image1]**
       * **Tiempo Promedio de Espera (TPE):**

         **![][image2]**
   16. el **Tiempo de Respuesta** es el tiempo que transcurre desde que se envía una solicitud hasta que el sistema produce la **primera respuesta**, no hasta que se completa la tarea. es una métrica crucial en sistemas interactivos.
2.
   1.
      1. **FCFS**: es también conocida como primero-entra-primero-sale (FIFO) o como un sistema de colas estricto. FCFS funciona mucho mejor para procesos largos que para procesos cortos.

         considérese el siguiente ejemplo, basado en [FINK88]:

         ![][image3]

         el tiempo de estancia normalizado para el proceso Y es excesivamente grande en comparación con los otros procesos: el tiempo total que está en el sistema es 100 veces el tiempo requerido para su proceso. esto sucederá siempre que llegue un proceso corto a continuación de un proceso largo. por otra parte, incluso en este ejemplo extremo, los procesos largos no van mal. el proceso Z tiene un tiempo de estancia de casi el doble que Y, pero su tiempo de residencia normalizado está por debajo de 2,0.
      2. cuando hay varios trabajos de igual importancia esperando a ser iniciados en la cola de entrada, el planificador selecciona el trabajo más corto primero (**SJF**, Shortest Job First).

         en la figura encontramos cuatro trabajos (A, B, C y D) con tiempos de ejecución de 8, 4, 4 y 4 minutos, respectivamente. al ejecutarlos en ese orden, el tiempo de respuesta para A es de 8 minutos, para B es de 12 minutos, para C es de 16 minutos y para D es de 20 minutos, para un promedio de 14 minutos:

         ![][image4]
      3. **Round-Robin:** a cada proceso se le asigna un intervalo de tiempo, conocido como quántum, durante el cual se le permite ejecutarse. si el proceso se sigue ejecutando al final del cuanto, la CPU es apropiada para dársela a otro proceso. si el proceso se bloquea o termina antes de que haya transcurrido el quántum, la conmutación de la CPU se realiza cuando el proceso se bloquea, desde luego.

         ![][image5]
      4. **Prioridades:** asigna la CPU al proceso con mayor prioridad. los procesos con mayor prioridad se ejecutan antes. es un algoritmo preemptivo o no preemptivo.

         ![][image6]

         **Ejecución**:
         1. P1 llega en el momento 0 y empieza a ejecutarse. se ejecuta hasta el final, en el tiempo 6.
         2. en el tiempo 6, los procesos P2, P3 y P4 están en la cola. el algoritmo selecciona el de mayor prioridad (número más bajo). P3 (prioridad 1) es el elegido.
         3. P3 se ejecuta de 6 a 13 (6+7).
         4. luego, el algoritmo selecciona entre los restantes (P2 y P4). P4 (prioridad 3) tiene mayor prioridad que P2 (prioridad 4).
         5. P4 se ejecuta de 13 a 16 (13+3).
         6. finalmente, se ejecuta P2, de 16 a 24 (16+8).
   2.
      1. **FCFS** no tiene parámetros.
      2. **SJF**: su único parámetro es el tiempo de ráfaga del CPU. este es la estimación de cuánto tiempo de CPU necesitará el proceso para completar su ejecución.
      3. **Round-robin**: su parámetro es el cuanto de tiempo (o time quantum). este parámetro determina la cantidad de tiempo que cada proceso puede ejecutar en la CPU antes de ser interrumpido y enviado al final de la cola de listos.
      4. **Prioridades**: nivel de prioridad. es un valor (generalmente un número entero) que se asigna a cada proceso. el planificador de CPU siempre ejecutará el proceso que tenga la prioridad más alta. la forma en que se asignan y gestionan estas prioridades puede variar:
         * prioridad estática: se asigna un valor fijo que no cambia durante la vida útil del proceso.
         * prioridad dinámica: el valor puede cambiar con el tiempo en función de diferentes factores, como el tiempo de espera o el uso de la CPU.
   3.
      1. **FCFS**: el más simple. ejecuta los procesos en el orden en que llegan. adecuado para **procesos por lotes** donde el orden es importante, pero malo para **sistemas interactivos** por el "efecto convoy".
      2. **SJF**: prioriza los procesos con el tiempo de ejecución más corto. óptimo para minimizar el tiempo de espera, ideal para **procesos por lotes**, pero puede causar inanición a los procesos largos.
      3. **Round Robin**: asigna un pequeño "cuanto de tiempo" a cada proceso de forma cíclica. es el mejor para **sistemas interactivos y de tiempo compartido**, ya que proporciona un tiempo de respuesta rápido y equitativo.
      4. **Prioridades**: ejecuta el proceso con la prioridad más alta. bueno para **sistemas de tiempo real y por lotes** donde la importancia de la tarea es clave. puede llevar a la inanición de procesos de baja prioridad si no se gestiona bien.
   4.
      1. **FCFS**:
         * ventajas (implícitas en su comportamiento):
           * se podría inferir que los procesos CPU Bound terminan al comenzar su primer ráfaga.
         * desventajas (implícitas en su comportamiento):
           * los procesos I/O Bound requieren múltiples ráfagas.
      2. **SJF**:
         * ventajas:
           * favorece la ejecución de procesos cortos (al colocarlos delante de procesos largos).
         * desventajas:
           * los procesos largos pueden sufrir inanición (starvation).
      3. **Round Robin**:
         * desventajas (relacionadas con el quantum):
           * si el quantum es pequeño, provoca un overhead de context switch.
      4. **Prioridades**:
         * desventajas:
           * los procesos de baja prioridad pueden sufrir inanición (starvation).
3. **a y b.** [Diagramas de Gantt hechos](https://docs.google.com/spreadsheets/d/1uqP8HVaJ9btkeSiTwiDy8jKE6zGUHnCZwYHceZWylsc/edit?usp=sharing)

   **c.** el algoritmo con menor TPR y TPE terminó siendo el SJF (21,4 y 12) ya que encola los procesos por tiempo de ejecución. le sigue FCFS (27,6 y 18,2) con su simpleza por encolar los procesos por orden de llegada. y por último, Round-Robin con timer variable (32,6 y 23,2) acabó siendo el más duradero porque encola a los procesos de manera equitativa según el quantum ingresado (overhead de context switch = coste de detener un proceso y comenzar la ejecución de otro).
4. **a y b.** [Diagramas de Gantt hechos](https://docs.google.com/spreadsheets/d/1GHEDSId9r_M56vvrc0gAjxBjd5o118mZNOnJXByh_gg/edit?usp=sharing)

   **d.** al aplicar Round-Robin con Q=1 se pudo apreciar que los procesos, a medida que avanzaba su ráfaga de CPU, se iban encolando inmediatamente, haciendo todo el proceso de manera equitativa pero llegando a un TPR de 11,8 y TRE de 7,6. en cambio, el algoritmo con Q=6 fue lo suficientemente grande para que todos los procesos terminaran sus ráfagas en un solo turno con un TPR de 9,8 y TRE de 5,6, haciendo que el resultado final del diagrama sea idéntico a como si se hubiera usado el algoritmo FCFS.

   **e.** creo que lo ideal sería elegir un quantum que sea ligeramente mayor que la duración de la ráfaga de CPU promedio en el sistema. de esta manera, la mayoría de los procesos terminarán en un solo turno (minimizando el overhead), pero el quantum seguirá siendo lo suficientemente corto como para interrumpir a los procesos muy largos y no perjudicar la interactividad.
5. **a.** [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/1IB7JaX4pzTE5OBDTiyHjaNTkK4wCribpVRPMJbjwhts/edit?usp=sharing)

   **b.** tiene TPR de 7,8 y TPE de 3,6, siendo hasta ahora el algoritmo de planificación más rápido.
6. **a y b.** [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/u/0/d/1ne1FxNkoACLx4UaRVsMiWGDVZrcYVzcSZAE6dawqcKw/edit)
7.
   1. la inanición es una condición o situación en la cual un proceso, aunque se encuentra listo para avanzar, es soslayado o pospuesto indefinidamente por el planificador.

      se refiere a una condición en la cual un proceso se encuentra listo para ejecutar pero se le deniega el acceso al procesador de forma continuada en deferencia a otros procesos.
   2.
      1. algoritmo Primero el Proceso más Corto (**SJF** - Shortest Job First):
         * esta política non preemptive (no expulsiva) selecciona el proceso con la ráfaga de CPU más corta.
         * con SJF, los procesos largos pueden sufrir inanición (starvation). si continuamente llegan trabajos o procesos cortos, los trabajos largos nunca podrían llegar a ejecutarse.
      2. algoritmo Menor Tiempo Restante (**SRTF** - Shortest Remaining Time First):
         * SRTF es la versión preemptive (apropiativa) de SJF.
         * al igual que con SJF/SPN, existe el riesgo de inanición para los procesos más largos con SRT.
      3. algoritmo con uso de **Prioridades**:
         * en este esquema, se selecciona el proceso de mayor prioridad de los que se encuentran en la Ready Queue.
         * los procesos de baja prioridad pueden sufrir inanición (starvation). esto sucede si existe continuamente un conjunto de procesos de mayor prioridad listos para ejecutarse y las prioridades no se ajustan.
      4. esquemas de **Colas Multinivel**:
         * en los esquemas de colas multinivel, la ready queue se divide en varias colas, cada una con su propio algoritmo de planificación.
         * la inanición puede ocurrir en estos esquemas. específicamente, en un ejemplo de esquema multinivel (con colas RR y FCFS), puede ocurrir inanición con los procesos ligados a E/S si siempre llegan procesos ligados a CPU.
   3.
      1. envejecimiento (Aging) o penalización (Penalty):
         * para los algoritmos basados en prioridades, la solución es permitir a un proceso cambiar su prioridad durante su ciclo de vida.
         * esta técnica, conocida como Aging (Envejecimiento) o Penalty (Penalización), promueve la prioridad de los procesos que han estado esperando un servicio por un tiempo considerable. el envejecimiento se basa en el principio de que cualquier proceso dado se convertirá, con el tiempo, en el más antiguo y obtendrá el recurso que necesita.
      2. uso de algoritmos FCFS/FIFO:
         * la inanición se puede evitar mediante el uso de una política de asignación de recursos del tipo "primero en llegar, primero en ser atendido" (FCFS).
         * dado que este método atiende primero al proceso que espere más tiempo, garantiza que, a su debido tiempo, cualquier proceso obtendrá el recurso necesario.
         * los semáforos fuertes (que encolan los procesos en orden FIFO) garantizan estar libres de inanición, a diferencia de los semáforos débiles.
      3. promoción en esquemas multinivel:
         * en esquemas de planificación retroalimentada (que son susceptibles a la inanición para procesos largos), una solución es promover a los procesos a colas de mayor prioridad después de que pasen un determinado tiempo esperando servicio en su cola actual.
8.
   1. [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/1UWsxc1QCffKbt9eS5Gsa_aXlwDfQN_0anZn1UZHtub0/edit?usp=sharing)
   2. [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/1kofAGwsFSI8d41uR5Dac-sU8rdECbtxX0FhPgH8qd1I/edit?usp=sharing)
9.
   1. Round Robin es un algoritmo apropiativo basado en tiempo (*time-sharing*), que otorga a cada proceso un pequeño intervalo de tiempo llamado **quantum (Q)**. su principal desventaja al manejar procesos mixtos radica en la gestión ineficiente del Q, penalizando a los procesos **ligados a I/O**.

      **Desventajas de RR con Procesos Mixtos:**
      1. **Penalización a Procesos I/O-Bound (Falta de Favoritismo):**
         * los procesos I/O-bound tienen ráfagas de CPU muy cortas (menores al Q) porque rápidamente necesitan realizar una operación de E/S.
         * bajo RR, cada vez que un proceso I/O-bound usa el CPU, pasa por el proceso de **cambio de contexto** (salvar y cargar el estado del proceso). dado que sus ráfagas son cortas, la proporción de tiempo dedicada al cambio de contexto con respecto al tiempo útil de CPU es **alta**.
         * **Resultado:** se **desperdicia tiempo** del CPU en sobrecarga administrativa (*overhead*) en lugar de trabajo productivo, lo que ralentiza el progreso de todos los procesos.
      2. **Ineficiencia del Quantum Grande:**
         * si se elige un Q grande para reducir el *overhead* (beneficiando a los procesos CPU-bound), los procesos I/O-bound terminan esperando más tiempo del necesario. si un proceso I/O-bound vuelve de E/S y tiene una ráfaga muy corta, debe esperar su turno completo en la cola, a menudo detrás de procesos CPU-bound que consumen el Q completo.
         * **Resultado:** aumenta el **tiempo de respuesta** y el **tiempo de espera** para los procesos I/O-bound.
      3. **Ineficiencia del Quantum Pequeño:**
         * si se elige un Q muy pequeño (beneficiando el tiempo de respuesta), el *overhead* por cambio de contexto se vuelve excesivo para los procesos CPU-bound.
         * **Resultado:** reduce el **rendimiento** (*throughput*) general del sistema.
   2. SRTF es un algoritmo apropiativo basado en la duración de la ráfaga de CPU. prioriza el proceso con el tiempo de CPU restante más corto. su principal desventaja es la **inanición** potencial de los procesos CPU-bound y la dificultad de la estimación.

      **Desventajas de SRTF con Procesos Mixtos:**
      1. **Inanición (Starvation) de Procesos CPU-Bound:**
         * los procesos I/O-bound, por su naturaleza, tienen ráfagas de CPU muy cortas (solo lo suficiente para preparar la siguiente E/S).
         * si un sistema tiene un flujo constante de procesos I/O-bound (o si estos regresan frecuentemente de E/S), siempre tendrán el tiempo restante más corto.
         * **Resultado:** los procesos CPU-bound, que tienen ráfagas largas, pueden ser **apropiados repetidamente** o **nunca llegar a ejecutarse** si hay un flujo continuo de procesos I/O-bound más cortos. esto se conoce como **inanición**.
      2. **Dificultad de Predicción:**
         * SRTF requiere conocer o **predecir** con precisión la duración de la próxima ráfaga de CPU.
         * la precisión de esta predicción afecta directamente la eficiencia del algoritmo. las ráfagas de los procesos I/O-bound (que son el factor determinante en SRTF) son a menudo impredecibles.
         * **Resultado:** si la predicción es incorrecta, el algoritmo puede tomar decisiones subóptimas, causando más apropiaciones innecesarias o una mala planificación.
      3. **Mayor Overhead por Apropiación:**
         * como algoritmo apropiativo, SRTF es muy sensible a la llegada de cualquier proceso nuevo (incluidos los I/O-bound que vuelven de E/S) que tenga un tiempo restante más corto.
         * cada apropiación conlleva un cambio de contexto. si los procesos I/O-bound regresan constantemente, el sistema incurrirá en una **alta sobrecarga de cambio de contexto**, similar al problema de un Q muy pequeño en RR, aunque por una razón diferente (prioridad por duración vs. fin del tiempo).
         * **Resultado:** el tiempo útil de CPU se reduce debido a la sobrecarga administrativa.
10. [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/1ImuM_DYfoTl8Mbjr8Ht52-ayRb3VGSt96spNsXnelBw/edit?usp=sharing)
11. sí, es posible que el quantum de un proceso nunca llegue a 0 (cero) bajo este esquema de planificación con el algoritmo VRR (Virtual Round Robin).

    la justificación se basa en las condiciones por las cuales un proceso que está siendo ejecutado es retirado de la CPU, las cuales no se limitan únicamente a la expiración de su quantum.

    el algoritmo Round Robin (RR), del cual VRR es una variante, funciona asignando a cada proceso un intervalo de tiempo fijo, conocido como quantum o rodaja de tiempo ($Q$). en el esquema descrito, este quantum se representa mediante un contador que se decrementa en 1 con cada interrupción de reloj.

    el contador de un proceso no llegará a cero si el proceso abandona la CPU por cualquiera de las siguientes razones antes de que se agote su tiempo asignado:

    1. finalización voluntaria: el proceso termina su ráfaga de CPU (tiempo de servicio esperado).
       * si el tiempo de ejecución requerido por el proceso es menor que el $Q$, el proceso finaliza y es retirado de la CPU antes de que el contador llegue a cero, y no se vuelve a encolar.
    2. bloqueo por espera: el proceso se bloquea debido a que necesita esperar una operación de E/S, un semáforo o algún otro evento.
       * cuando un proceso realiza una llamada al sistema que lo obliga a esperar, pasa al estado "bloqueado" (o "esperando") y es retirado de la CPU, independientemente del valor restante en su contador.

    en estos casos, el proceso cede el control del procesador de forma voluntaria antes de que el contador se agote, lo que significa que el valor del quantum no llega a cero, y por lo tanto, la expulsión no se debe a la expiración de la rodaja de tiempo.

    esta situación es particularmente común en el contexto de VRR, ya que este algoritmo está diseñado para favorecer a los procesos limitados por E/S (I/O-bound). los procesos limitados por E/S se caracterizan por tener ráfagas de CPU más cortas. por lo tanto, es probable que estos procesos utilicen el procesador por un período breve y luego se bloqueen para esperar E/S, regresando a la cola antes de consumir su quantum completo.

    si el contador estuviera asociado a una variante de Round Robin de Timer Fijo, el contador se inicializaría en $Q$ solo si su valor anterior era cero. sin embargo, si se utiliza la variante más común, el Timer Variable (la más utilizada), el contador se inicializa al valor de $Q$ cada vez que el proceso es asignado a la CPU. en ambos casos, si el proceso se bloquea o termina antes, el contador no habrá alcanzado cero. si se utiliza el Timer Variable, incluso si el proceso no agota su quantum, se reinicializará al valor $Q$ en la próxima asignación, asegurando que el proceso nunca necesite alcanzar 0 si finaliza o se bloquea prematuramente.
12. .
13.

    el algoritmo de Colas Multinivel (Multilevel Queue) surge de la combinación de algoritmos de planificación para aumentar la eficiencia. en este esquema, la cola de procesos listos (ready queue) se divide en varias colas, lo que se asemeja a la planificación con prioridades. cada cola tiene su propio algoritmo de planificación, conocido como planificador horizontal, y existe un algoritmo adicional para planificar entre las colas, denominado planificador vertical.

    a continuación, se proponen los algoritmos más adecuados para planificar los procesos interactivos y los procesos por lotes (Batch), basándose en sus características operativas:

    **a. Algoritmo de planificación para cada cola (Planificador Horizontal)**

    la elección del algoritmo de planificación para cada cola debe basarse en la naturaleza y los objetivos de los procesos que contienen:

    1. cola de Procesos Interactivos

    los procesos interactivos son aquellos que requieren una respuesta rápida y generalmente son limitados por E/S (I/O-bound), ya que pasan gran parte de su tiempo esperando la entrada/salida del usuario.

    algoritmo sugerido: Round Robin (RR) o Turno Rotatorio.
    * justificación: RR es uno de los algoritmos más antiguos, simples y equitativos, muy utilizado en sistemas interactivos.
    * a cada proceso se le asigna un intervalo de tiempo fijo (quantum) para ejecutarse.
    * si el proceso utiliza todo su quantum, es expulsado y colocado al final de la cola. sin embargo, los procesos limitados por E/S rara vez consumen su quantum completo y se bloquean rápidamente, lo que permite que la CPU sea asignada rápidamente a otro proceso, mejorando el tiempo de respuesta percibido.
    * si el quantum es apropiadamente seleccionado (entre 20 y 50 ms es a menudo razonable), se logra un buen equilibrio entre la sobrecarga del cambio de contexto y la respuesta a peticiones cortas.

    (nota: alternativamente, se podría usar una planificación basada en prioridades dinámicas que favorezca a los procesos I/O-bound, como establecer la prioridad en función inversa a la fracción del quantum utilizado, lo que permite que los procesos con ráfagas cortas tengan mayor prioridad).

    2. cola de Procesos Batch (Lotes)

    los procesos Batch son típicamente limitados por la CPU (CPU-bound), realizan trabajos de rutina sin interacción urgente del usuario, y el objetivo principal de su planificación suele ser maximizar el rendimiento (throughput) y la utilización de la CPU.

    algoritmos sugeridos: First-Come, First-Served (FCFS/FIFO) o Shortest Job First (SJF).
    * FCFS (primero en llegar, primero en ser atendido):
      * justificación: FCFS es el algoritmo más simple y es aceptable en sistemas de procesamiento por lotes, especialmente si se utiliza una planificación no apropiativa o con periodos largos, ya que minimiza la sobrecarga por conmutación de procesos, mejorando el rendimiento. los procesos se asignan en el orden en que lo solicitan y se ejecutan hasta que se bloquean o terminan.
    * SJF (el trabajo más corto primero):
      * justificación: si se conocen los tiempos de ejecución de antemano (lo cual es un supuesto común en muchos entornos Batch), SJF produce el tiempo de respuesta promedio mínimo. esta es una política no apropiativa que selecciona el proceso con la ráfaga más corta.

    **b. Algoritmo para administrar las colas (Planificador Vertical)**

    el planificador vertical debe determinar qué cola (Interactiva o Batch) se selecciona para elegir el siguiente proceso.

    algoritmo sugerido: Planificación por Prioridad (Preemptiva)
    * estrategia: se debe asignar una prioridad mayor a la cola de Procesos Interactivos que a la cola de Procesos Batch.
    * prioridad: Cola Interactiva > Cola Batch.
    * justificación:
      * en sistemas de tiempo compartido, la meta primordial es la puntualidad y la respuesta rápida para los usuarios interactivos. por lo tanto, se debe dar preferencia a los procesos que están esperando la interacción.
      * la planificación por prioridad funciona seleccionando el proceso ejecutable con la prioridad más alta. si la cola interactiva tiene procesos listos, se ejecutan antes que cualquier proceso de la cola Batch.
      * dado que los procesos interactivos utilizan RR (o un algoritmo similar) para sus ráfagas cortas, la planificación de colas puede ser preemptiva (expulsiva). si un proceso Batch está ejecutando y un proceso Interactivo llega al estado Listo, el proceso Batch debe ser interrumpido (expulsado) inmediatamente para dar paso al proceso Interactivo.
    * riesgo de inanición: si solo se utiliza una prioridad estricta, los procesos de baja prioridad (Cola Batch) podrían sufrir inanición si hay un flujo constante de procesos de alta prioridad (Interactivos).
    * mitigación: para evitar la inanición, el algoritmo de planificación entre colas podría permitir que un proceso cambie su prioridad durante su ciclo de vida (Aging o Penalty). otra solución es utilizar un enfoque de "prioridad con clases" donde la cola de mayor prioridad se ejecuta por Turno Rotatorio, y solo si está vacía, se pasa a la siguiente cola, y así sucesivamente. esto asegura que los procesos Batch reciban tiempo de CPU eventualmente, pero solo cuando la actividad interactiva se reduce.
14.
    1. [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/1xm6rAYWUNftvoR6eYoR5Vi50ocfkj1bXal4mQ7lT3YM/edit?usp=sharing)
    2. [Diagrama de Gantt hecho](https://docs.google.com/spreadsheets/d/15ZwesSPvMgTtzDBdtlbNVkxH2K_naiTbSdpIOqKFzPE/edit?usp=sharing)
15. .
16. .
17.

    **a. Prioridad determinada estáticamente con el método del más corto primero (SJF)**

    el algoritmo Shortest Job First (SJF), o Primero el Proceso Más Corto (SPN, Shortest Process Next) en su versión no expulsiva, selecciona para su ejecución el proceso con el tiempo de procesamiento más corto esperado.

    esta estrategia beneficia principalmente a los trabajos cortos en general, ya que los procesos cortos se colocan delante de los procesos largos.

    1. cortos acotados por CPU y cortos acotados por E/S:
       * ambos tipos de trabajos se benefician. la principal característica que favorece SJF es la corta duración de la ráfaga de CPU.
       * el objetivo de SJF es minimizar el tiempo de respuesta promedio (tiempo de estancia).
       * dado que los procesos limitados por E/S (I/O-bound) se caracterizan por tener ráfagas de CPU cortas y esperas frecuentes de E/S, la heurística del "más corto primero" favorece intrínsecamente a los procesos I/O-bound.
       * la versión expulsiva de SJF, conocida como SRTF (Shortest Remaining Time First), selecciona el proceso al cual le resta menos tiempo de ejecución en su siguiente ráfaga, y favorece explícitamente a los procesos I/O Bound.
    2. largos acotados por CPU y largos acotados por E/S:
       * no se benefician. de hecho, los procesos largos (independientemente de si están limitados por CPU o E/S, aunque un proceso largo I/O-bound es menos común ya que I/O-bound implica ráfagas cortas) pueden sufrir inanición (starvation) si hay una llegada constante de procesos más cortos.

    conclusión para (a): SJF beneficia a los trabajos cortos acotados por CPU y cortos acotados por E/S, ya que prioriza las ráfagas de procesamiento más cortas para minimizar el tiempo de respuesta promedio.

    **b. Prioridad dinámica inversamente proporcional al tiempo transcurrido desde la última operación de E/S.**

    esta política de planificación dinámica está diseñada para recompensar a los procesos que se bloquean por E/S frecuentemente, lo cual es la definición de los procesos limitados por E/S (I/O-bound).

    1. cortos acotados por E/S:
       * son los principales beneficiarios. los procesos limitados a E/S tienen ráfagas de CPU cortas y, por ende, realizan esperas frecuentes por E/S.
       * si la prioridad es inversamente proporcional al tiempo transcurrido desde la última E/S, un proceso que se desbloquea después de una E/S tendrá un tiempo transcurrido casi nulo y, por lo tanto, una prioridad muy alta.
       * el objetivo es que este proceso obtenga la CPU inmediatamente para emitir su siguiente petición de disco, permitiendo que las operaciones de E/S procedan en paralelo con otros cálculos.
       * Linux, por ejemplo, implementa heurísticas de interactividad para recompensar a los hilos interactivos (típicamente I/O-bound) y castigar a los hilos que acaparan la CPU. Windows también impulsa la prioridad de un hilo cuando se completa una E/S para que pueda volver a ejecutarse con rapidez y pueda iniciar más operaciones de E/S.
    2. largos acotados por CPU:
       * son penalizados. los procesos limitados a cálculos (CPU-bound) tienen ráfagas largas de CPU. si un proceso CPU-bound está ejecutándose, el "tiempo transcurrido desde la última operación de E/S" aumenta constantemente, lo que hace que su prioridad disminuya dinámicamente. este proceso está siendo "castigado" por acaparar la CPU.

    conclusión para (b): esta estrategia beneficia a los trabajos cortos acotados por E/S (I/O-bound), ya que se les da preferencia inmediatamente después de una E/S para optimizar la utilización de los dispositivos de entrada/salida y mejorar el tiempo de respuesta para tareas interactivas.
18.

    la razón fundamental es que si el quantum ($Q$) en Round-Robin (RR) se incrementa sin límite (o hasta ser mayor que la ráfaga de CPU más larga), el algoritmo de planificación pierde su característica principal de apropiación basada en el tiempo y, por lo tanto, se comporta como el algoritmo Primero en Llegar, Primero en Ser Atendido (FIFO), que es un algoritmo no apropiativo.

    a continuación, se explica brevemente la dinámica:

    **1. Definición de Round-Robin (RR)**

    el algoritmo de planificación por Turno Rotatorio (Round-Robin) es una política basada en un reloj, en la cual a cada proceso se le asigna un intervalo de tiempo fijo conocido como quantum ($Q$) para ejecutarse. es una política de planificación apropiativa (o expulsiva).

    si un proceso sigue ejecutándose al final de su quantum, la CPU es apropiada (expulsada) para dársela a otro proceso. cuando un proceso es expulsado de la CPU, es colocado al final de la Cola de Listos (Ready Queue), que opera como una cola FIFO circular.

    **2. Definición de Primero en Entrar, Primero en Ser Atendido (FIFO/FCFS)**

    el algoritmo Primero en Entrar, Primero en Ser Atendido (FCFS o FIFO) es la política de planificación más sencilla y es no apropiativa (nonpreemptive).

    con FCFS, la CPU se asigna a los procesos en el orden en el que la solicitan. una vez que un proceso comienza a ejecutarse, se le permite seguir ejecutándose hasta que se bloquea (ya sea en espera de una operación de E/S) o libera la CPU de forma voluntaria (al terminar).

    **3. La Aproximación por un Quantum Ilimitado**

    la única diferencia funcional entre RR y FCFS es la regla de desalojo: RR puede desalojar por tiempo (apropiación), mientras que FCFS solo desalojar por finalización o bloqueo (no apropiación).

    si el valor del quantum ($Q$) se establece demasiado largo, o incluso mayor que el tiempo de ejecución de la ráfaga de CPU más larga del sistema:
    * se anula la preeminencia por tiempo: la apropiación (expulsión) forzada debida a la expiración del quantum no ocurrirá con frecuencia, o nunca si el $Q$ es mayor que la ráfaga máxima.
    * comportamiento FCFS: el proceso se ejecutará hasta que su ráfaga de CPU termine o se bloquee por una operación de E/S (es decir, abandona la CPU voluntariamente). este es precisamente el comportamiento que define a un algoritmo no apropiativo como FCFS.
    * degeneración: en el caso extremo de un quantum que es mayor que el proceso más largo en ejecución, la planificación RR degenera en FCFS.

    en resumen, cuando Q tiende a infinito, se elimina la restricción de tiempo que distingue a RR, y los procesos se ejecutan según el orden en que entraron a la cola de listos (FIFO circular) sin ser interrumpidos por el planificador, lo que equivale a la lógica de FCFS.
19.
    1. Hola
       [lista los archivos del directorio actual] (impreso por el hijo)
    2. hola
       [muestra los procesos corriendo actualmente] (impreso por el hijo)
       [lista los archivos del directorio actual] (impreso por el padre)
    3. Anda a rendir el Primer Parcial de Promo!
       Estoy comenzando el Examen
       [muestra los procesos corriendo actualmente] (impreso por el hijo)
       ¿Como te fue?
20.
    1. aparece 8 veces.
       1. P1 (padre) -> fork(): *se crea 1 proceso más*
       2. P1 (padre) y P2 (hijo de P1) -> fork(): *se crean 2 procesos más*
       3. P1 (padre), P2 (hijo de P1), P3 (hijo de P1) y P4 (hijo de P2) -> fork(): *se crean 4 procesos más*

       entonces P1 (padre) + 7 procesos nuevos = 8 procesos que van a ejecutar `printf ("Proceso \n");`
    2. en este programa sí, es el mismo. 2^n = cant. líneas; siendo n = la cantidad de pasos del for().
21.
    1. se imprimirá como máximo:
       ```
       Comienzo
       Proceso 1
       Proceso 1
       Proceso 1
       Proceso 1
       Proceso 1
       Proceso 1
       Proceso 1
       Proceso 1
       ```
    2. `Comienzo` y las demás lo mismo.
    3. .
    4. .
22. la MMU es la parte de la CPU encargada de la traducción de direcciones. aunque actualmente suele estar integrada en el chip de la CPU, lógicamente podría ser un chip separado, como lo era hace años. **Funciones principales:**

    **1. Traducción Dinámica de Direcciones**: la función principal de la MMU es convertir instantáneamente la dirección virtual (o lógica) generada por un programa en la dirección física real en la Memoria de Acceso Aleatorio (RAM) donde reside el dato.

    **2. Manejo de la Paginación**: opera dividiendo la dirección virtual entrante en un número de página y un desplazamiento (offset) para luego utilizar el número de página como índice en la tabla de páginas, extrayendo el correspondiente número de marco de página físico.

    **3. Gestión del TLB**: la MMU suele contener un dispositivo de hardware llamado Búfer de Traducción Adelantada (TLB). cuando se presenta una dirección virtual, la MMU comprueba si el número de página virtual está presente en el TLB; si lo está, el marco de página se toma directamente del TLB, acelerando la traducción sin tener que pasar por la tabla de páginas en memoria.

    **4. Soporte de Protección**: la MMU comprueba los bits de protección (permisos de lectura/escritura/ejecución) asociados a la página. si el acceso viola estos bits, se genera un fallo de protección.

    **5. Administración del Sistema Operativo**: el sistema operativo interactúa directamente con la MMU para su administración. por ejemplo:
    * la MMU debe restablecerse cuando se planifica un nuevo proceso para su ejecución.
    * las rutinas del kernel pueden requerir la administración de la MMU, incluyendo el acceso al estado de hardware privilegiado como los registros de control de la MMU.
    * ciertos controladores de Acceso Directo a Memoria (DMA) pueden utilizar la MMU para traducir direcciones virtuales a físicas durante las transferencias de datos.
    * la funcionalidad ampliada de la MMU mejora el rendimiento del sistema operativo, como en el caso de Symbian OS.
23. es el conjunto de todas las direcciones de memoria lógicas que un proceso puede referenciar. incluye secciones para el código (texto), datos, la pila (stack) y la heap.
24.
    1. **Dirección Lógica o Virtual**: es una direccion generada por la CPU desde la perspectiva de un proceso. cada proceso tiene su propio espacio de direcciones lógicas, que es un conjunto contiguo de direcciones (por ej., de 0 a 2^32-1).
    2. **Dirección física:** es la dirección real en la memoria principal.
25.
    1.

       | Método | Funcionamiento | Ventajas | Desventajas |
       | :---- | :---- | :---- | :---- |
       | **Particiones Fijas** | la memoria principal se divide en **regiones con límites estáticos y fijos** determinados en el momento de la generación del sistema. el proceso se carga en una partición de tamaño **igual o superior**. las particiones pueden ser del mismo o de distinto tamaño. | **sencilla de implementar** y requiere **poca sobrecarga** para el sistema operativo. | **fragmentación interna**: se desperdicia espacio si el proceso es menor que la partición asignada. el número de particiones **limita el número máximo de procesos** activos. |
       | **Particiones Dinámicas** | las particiones se crean de **forma dinámica** y son de **longitud y número variable**. el proceso recibe **exactamente tanta memoria como requiere** y no más. | **no existe fragmentación interna**. hay un **uso más eficiente de la memoria principal** ya que se ajusta al tamaño del proceso. | **fragmentación externa**: la memoria se fragmenta en **muchos huecos pequeños** externos a las particiones. requiere **compactación** (lo que consume tiempo de procesador) para evitar la fragmentación externa. es **más complejo de mantener**. |
    2. el Kernel, o administrador de memoria, necesita mantener estructuras de control para gestionar las particiones. en particular, necesita:
       1. registro de Uso de Memoria: el administrador debe llevar el registro de cuáles partes de la memoria están en uso (asignadas a procesos) y cuáles están libres. esto incluye mantener un registro de las reservas de memoria principal por parte de los procesos.
       2. información de Localización: necesita conocer la posición en memoria principal de cada proceso.
       3. gestión de Huecos (Particiones Dinámicas): debe mantener una lista de los procesos y huecos (bloques de memoria libre) ordenada por dirección, y saber cuánta memoria debe asignar.
       4. registros de Control (Para la reubicación y protección): para la traducción de direcciones y la protección de memoria, el Kernel controla los registros base y límite del hardware. el Kernel debe asegurarse de que cada imagen de proceso esté aislada de las demás mediante estos registros.
          * la información debe incluir los atributos de protección que restringen el uso de la memoria principal y virtual.
    3.
       1. **De lógicas a físicas:**

          | Componente | Fórmula | Función y Justificación (Según las fuentes) |
          | :---- | :---- | :---- |
          | **Página (Virtual)** | página = (dirLógica / tamañoPágina) | la dirección virtual se divide en un **número de página virtual** (bits de orden superior) y un desplazamiento (bits de orden inferior). si el tamaño de página es una potencia de 2, la división entera aísla el número de página. |
          | **Desplazamiento** | desplazamiento = (dirLógica MOD tamañoPágina) | el desplazamiento (*offset*) especifica la ubicación del *byte* dentro de la página y se obtiene del resto de la división. este valor **se mantiene sin cambios** durante la traducción. |
          | **Marco (Físico)** | marco = marcoAsignadoAPágina | el número de página virtual se utiliza como **índice en la tabla de páginas** para encontrar el número de marco de página físico asociado (si la página está en memoria). |
          | **Dirección Física** | dirFísica = (marco * tamañoPágina) + desplazamiento | la **Dirección Física** se construye al combinar el número de marco con el desplazamiento. esto es matemáticamente equivalente a concatenar el número de marco y el desplazamiento. |
       2. **De físicas a lógicas:**

          | Componente | Fórmula | Función y Justificación (Relación inversa) |
          | :---- | :---- | :---- |
          | **Marco y Desplazamiento** | marco = (dirFísica / tamañoPágina) y desplazamiento = (dirFísica MOD tamañoPágina) | descomponen la dirección física en el número de marco y el desplazamiento dentro de ese marco, lo cual es la composición de la dirección física. |
          | **Página (Virtual)** | página = páginaAsignadaAMarco | esta es la operación inversa central. el SO debe determinar a qué página virtual y a qué proceso pertenece un marco físico dado. esta necesidad es la razón de ser de estructuras de datos como la Tabla de Páginas Invertida (Inverted Page Table), que se indexa por el número de marco de página real y contiene la información del número de página virtual y el identificador del proceso que lo posee. |
          | **Dirección Lógica** | dirLógica = (página * tamañoPágina) + desplazamiento | reconstruye la dirección virtual del proceso al concatenar el número de página virtual recuperado y el desplazamiento. |
26.

    | Alternativa | Ventajas | Desventajas |
    | :---- | :---- | :---- |
    | **Particiones de Igual Tamaño** | la **ubicación de los procesos es trivial**. un proceso se carga en cualquier partición disponible, ya que no importa qué partición se utiliza. es un esquema **sencillo de implementar**. | **fragmentación interna** significativa: se desperdicia espacio si el proceso es más pequeño que el tamaño de la partición. si un programa es **demasiado grande** para caber en una partición, el programador debe usar la técnica de *overlays* (superposiciones). |
    | **Particiones de Diferente Tamaño** | permite acomodar programas de **mayor tamaño** sin la necesidad de *overlays*. puede minimizar el desperdicio de memoria (o lograr **menor fragmentación interna**) si los programas pequeños se asignan a las particiones más pequeñas que los puedan albergar. ofrece un grado de **flexibilidad** frente a las particiones fijas. | la **fragmentación interna** sigue siendo un problema, aunque mitigado. si se utilizan colas separadas para cada partición, el sistema podría ser **subóptimo** (una partición grande podría quedar sin usar aunque haya procesos más pequeños esperando en otras colas). |
27.
    1.
       1. la fragmentación **interna** ocurre cuando la memoria se divide en particiones o bloques de tamaño fijo.

          **Referencia del problema**: este problema surge cuando se asigna un bloque de datos (o un proceso) a una partición que es mayor que el tamaño real del proceso.
          * el espacio desperdiciado se encuentra dentro de la partición asignada.
          * la memoria malgastada se limita generalmente a la fracción de la última partición que queda sin utilizar.
          * en el esquema de Particiones Fijas, esto sucede si el proceso que se carga es más pequeño que el tamaño de la partición asignada.

          la fragmentación **externa** ocurre cuando la memoria se divide en particiones de tamaño variable, como es el caso de las Particiones Dinámicas.

          **Referencia del problema:**
          * a medida que los procesos se cargan, se ejecutan y se eliminan o se intercambian a disco, el espacio libre de memoria principal (denominado huecos) se fragmenta en muchos trozos pequeños que son externos a las particiones ocupadas.
          * este fenómeno se conoce también como el "efecto de tablero de ajedrez".
          * aunque el espacio total de los huecos podría ser suficiente para acomodar un nuevo proceso, estos huecos están dispersos, haciendo que la utilización de la memoria se reduzca.
    2. técnica: **Compactación**

       la compactación es la técnica utilizada por el Kernel para eliminar la fragmentación externa.

       **Mecanismo de Mitigación:**
       1. desplazamiento de Procesos: de forma periódica, el sistema operativo desplaza los procesos que están en la memoria principal.
       2. contigüidad: el objetivo de este desplazamiento es asegurar que los procesos queden contiguos en la memoria.
       3. unificación de Memoria Libre: al mover los procesos para que queden juntos, toda la memoria libre (los huecos fragmentados) se une en un único bloque. esto permite que se puedan cargar procesos adicionales que requieran un gran bloque contiguo.

       **Requisito esencial:**

       la compactación requiere la capacidad de reubicación dinámica (dynamic relocation). esto significa que debe ser posible mover un programa desde una región de memoria principal a otra sin invalidar las referencias de memoria del programa.
28.

    | Técnica | Mecanismo de Funcionamiento | Información que debe mantener el Kernel |
    | :---- | :---- | :---- |
    | **First Fit (Primer Ajuste)** | el Kernel **escanea la lista de segmentos** (procesos y huecos) desde el principio de la memoria y selecciona el **primer hueco** que sea lo suficientemente grande para acomodar el proceso. el hueco se divide en dos partes: una para el proceso y otra para el resto sin utilizar (a menos que el ajuste sea exacto). | el Kernel debe mantener una **lista de huecos** (bloques libres de memoria) y procesos, generalmente **ordenada por dirección**. |
    | **Next Fit (Siguiente Ajuste)** | funciona de manera similar a First Fit, pero el Kernel mantiene un **registro de dónde se detuvo la última vez** y **comienza la búsqueda** del siguiente hueco adecuado desde ese punto, en lugar de empezar siempre desde el principio. | el Kernel debe mantener una **lista de huecos** y un **puntero o registro** de la ubicación de la última asignación exitosa. |
    | **Best Fit (Mejor Ajuste)** | el Kernel **busca en toda la lista** de huecos, de principio a fin, y selecciona el **hueco más pequeño** que sea lo suficientemente grande para la solicitud. este método busca minimizar el desperdicio de espacio (*fragmentación interna*) dentro del hueco asignado. | el Kernel debe mantener una **lista de huecos**. esta lista a menudo se mantiene **ordenada por tamaño** para acelerar la búsqueda, lo que hace que el algoritmo sea más rápido en la asignación al encontrar inmediatamente el mejor ajuste sin buscar toda la lista. |
    | **Worst Fit (Peor Ajuste)** | el Kernel **busca en toda la lista** y selecciona el **hueco más grande** disponible. el objetivo es que, al dividir el hueco más grande, el fragmento sobrante sea lo suficientemente grande como para ser útil para futuras asignaciones. | el Kernel debe mantener una **lista de huecos**. |
29.
    1. la segmentación trabaja basándose en los siguientes principios:
       * **Estructura Lógica:** la memoria es vista como una colección de **espacios de direcciones completamente independientes**, llamados **segmentos**. estos segmentos son entidades lógicas de las que el programador está consciente.
       * **Longitud Variable:** los segmentos tienen **longitudes variables** (que pueden cambiar durante la ejecución). un segmento puede contener un procedimiento, un *array*, una pila o una colección de variables, pero generalmente no una mezcla de distintos tipos.
       * **Direccionamiento Bidimensional:** para especificar una dirección, el programa debe proporcionar una dirección en **dos partes**: **un número de segmento** y una **dirección dentro del segmento** (desplazamiento).
       * **Asignación al Programa:** en la segmentación simple, todos los segmentos de un proceso deben cargarse en la memoria principal para que el programa se ejecute. los segmentos **no tienen que estar localizados de forma contigua** en la memoria principal.
       * **Independencia:** debido a que cada segmento es un espacio de direcciones separado, los segmentos pueden **crecer o reducirse de manera independiente** sin afectarse unos a otros.
    2. el **Kernel** (Administrador de Memoria) necesita estructuras de datos para gestionar la asignación, traducción y protección de los segmentos:
       1. tabla de Segmentos: por cada proceso, el Kernel mantiene una tabla de segmentos. esta tabla es utilizada por el hardware de gestión de memoria para la traducción. cada entrada de la tabla debe contener:
          * la dirección inicial o base del segmento en la memoria principal.
          * la longitud del segmento, utilizada para comprobar la validez de las direcciones (protección).
          * bits de control o protección (por ejemplo, permisos de lectura/escritura).
          * un bit de presente/ausente (en el caso de segmentación con memoria virtual) para indicar si el segmento está en la memoria principal.
       2. lista de Memoria Libre (Huecos): el Kernel debe mantener una lista ligada de los segmentos de memoria asignados y libres (huecos). dado que la segmentación utiliza particiones de tamaño variable, esta lista ayuda a ubicar un hueco adecuado para los segmentos que llegan.
    3. en la segmentación, la traducción dinámica de una Dirección Lógica (número de segmento + desplazamiento) a una Dirección Física se realiza sumando la dirección lógica al Registro Base del segmento, siempre y cuando el desplazamiento esté dentro del límite de longitud del segmento.

       **1**. el procesador extrae el Número de Segmento (S) de la dirección lógica y lo utiliza para indexar la Tabla de Segmentos.

       **2**. la Tabla de Segmentos devuelve la Dirección Base (B) y la Longitud (L) del segmento.

       **3**. el hardware compara el Desplazamiento (D) con la Longitud (L). si D >= L, se produce un fallo de segmento (violación de protección).

       **4**. si D < L, se calcula la Dirección Física sumando la Dirección Base y el Desplazamiento: Dirección Física = B + D.
    4. en el esquema de segmentación pura:
       * fragmentación Interna: no se produce fragmentación interna. esto se debe a que cada segmento recibe exactamente la cantidad de memoria que requiere.
       * fragmentación Externa: sí se produce fragmentación externa. al igual que en el particionamiento dinámico, la memoria se divide en trozos que contienen segmentos y huecos dispersos. con el tiempo, esto genera muchos huecos pequeños fuera de las particiones ocupadas (el efecto de tablero de ajedrez).
    5. dado que la segmentación utiliza particiones de tamaño variable (similar al Particionamiento Dinámico) y depende de encontrar huecos libres para cargar los segmentos, las técnicas de asignación son cruciales para mitigar la fragmentación externa.

       de las técnicas de asignación (Best Fit, Worst Fit, First Fit y Next Fit) vistas previamente, el algoritmo que generalmente se ajusta mejor y produce mejores resultados en la práctica es **First Fit** (Primer Ajuste):
       * **Velocidad**: First Fit es la técnica más rápida ya que escanea la lista de huecos de memoria desde el principio y se detiene tan pronto como encuentra un hueco lo suficientemente grande para el segmento. busca lo menos posible.
       * **Rendimiento en Fragmentación**: aunque intuitivamente Best Fit podría parecer mejor (al elegir el hueco más pequeño que ajusta), Best Fit tiende a dejar muchos huecos residuales pequeños e inútiles, lo que deteriora rápidamente la memoria. First Fit, al ser menos selectivo, a menudo deja fragmentos más grandes y utilizables en el resto de la memoria, lo que es beneficioso para futuras solicitudes de segmentos.
30.
    1. **Dir. lógica 0000:9001**

       dir. base: 102 ; tamaño: 12500.

       como el desplazamiento 9001 < al tamaño 12500…

       entonces se traduce a la dir. física = dir. base + desplazamiento = 102 + 9001 = **9103**.
    2. **Dir. lógica 0001:24301**

       dir. base: 28699 ; tamaño: 24300.

       como el desplazamiento 24301 > al tamaño 24300…

       no se puede traducir.
    3. **Dir. lógica 0002:5678**

       dir. base: 68010 ; tamaño: 15855.

       como el desplazamiento 5678 < al tamaño 15855…

       entonces se traduce a la dir. física = 68010 + 5678 = **73688**.
    4. **Dir. lógica 0001:18976**

       dir. base: 28699 ; tamaño: 24300.

       como el desplazamiento 18976 < al tamaño 24300…

       entonces se traduce a la dir. física = 28699 + 18976 = **47675**.
    5. **Dir. lógica 0003:0**

       dir. base: 80001 ; tamaño: 400.

       como el desplazamiento 0 < al tamaño 400…

       entonces se traduce a la dir. física = 80001 + 0 = **80001.**
31.
    1. la paginación es una solución elegante y potente al problema de la fragmentación externa. su concepto central consiste en romper la restricción de la contigüidad, permitiendo que el espacio de direcciones de un proceso se disperse por la memoria física. para lograrlo, tanto el espacio de direcciones lógicas como la memoria física se dividen en bloques de tamaño fijo: el espacio lógico se divide en páginas y la memoria física en marcos de página.
    2. para implementar la paginación, la MMU utiliza una estructura de datos llamada tabla de páginas. cada proceso tiene su propia tabla de páginas, que mapea sus páginas virtuales a los marcos de página físicos.
    3.
       1. la CPU genera una dirección lógica, que la MMU divide en dos componentes:
          * número de Página (p): los bits de orden superior de la dirección.
          * desplazamiento (d): los bits de orden inferior de la dirección.
       2. el número de página (p) se utiliza como índice para acceder a la tabla de páginas del proceso.
       3. la entrada correspondiente en la tabla de páginas contiene el número de marco (f) donde reside esa página en la memoria física.
       4. la dirección física final se construye combinando el número de marco (f) con el desplazamiento (d).
    4. la fragmentación interna es inherente al diseño de la paginación:
       1. causa: la paginación divide tanto el espacio de direcciones lógicas como la memoria física en bloques de tamaño fijo (páginas y marcos). es muy raro que el tamaño de un proceso sea un múltiplo exacto del tamaño de la página.
       2. mecanismo: la última página de un proceso, en general, no se llena completamente con código o datos. el espacio restante en esa última página, aunque asignado al proceso, permanece sin usar.
32. tamaño de página: 512 bytes;
    c/ dir = 1 byte;
    RAM: 10240 bytes (10 KiB);
    P1: 2000 bytes.

    1.

       | Programa |
       | :---: |
       | Página 0 |
       | Página 1 |
       | Página 2 |
       | Página 3 |

       | Tabla de páginas |  |
       | :---: | :---: |
       | **Página** | **Marco** |
       | 0 | 3 |
       | 1 | 5 |
       | 2 | 2 |
       | 3 | 6 |

       | Memoria |  |
       | :---: | :---: |
       | **Marco** | **Página** |
       | 0 | - |
       | 1 | - |
       | 2 | 2 |
       | 3 | 0 |
       | 4 | - |
       | 5 | 1 |
       | 6 | 3 |
       | .. | - |
       | 19 | - |

       * **Número de páginas para P1:** 2000 / 512 = 3.9 (4 páginas).
       * **Número de marcos:** 10240 / 512 = 20 (0 - 19).
       * **Rango de dir. lógicas:**
         * **Página 0:** 0 - 511
         * **Página 1:** 512 - 1023
         * **Página 2:** 1024 - 1535
         * **Página 3:** 1536 - 1999 (porque P1 ocupa 2000 bytes)
    2. - **Desplazamiento**: dirLógica MOD tamañoPágina.
       - **Dir. física**: (marco * tamañoPágina) + desplazamiento.
       1. corresponde a la página 0.
          - desplazamiento: 35 MOD 512 = 35.
          - marco: 3
          - dir. física: (3 * 512) + 35 = **1571**
       2. corresponde a la página 1.
          - desplazamiento: 512 MOD 512 = 0
          - marco: 5
          - dir. física: (5 * 512) + 0 = **2560**
       3. no corresponde.
       4. corresponde a la página 0.
          - desplazamiento: 0 MOD 512 = 0
          - marco: 3
          - dir. física: (3 * 512) + 0 = **1536**
       5. corresponde a la página 2.
          - desplazamiento: 1325 MOD 512 = 301
          - marco: 2
          - dir. física: (2 * 512) + 301 = **1325**
       6. corresponde a la página 1.
          - desplazamiento: 602 MOD 512 = 90
          - marco: 5
          - dir. física: (5 * 512) + 90 = **2650**
    3. **Marco**: (dirFísica / tamañoPágina)

       **Desplazamiento**: (dirFísica MOD tamañoPágina)

       **Dir. lógica**: (página * tamañoPágina) + desplazamiento
       1. marco: 509 / 512 = 0 -> **el marco 0 no está asociado a ninguna página de P1.**
       2. marco: 1500 / 512 = 2 (página 2)

          desplazamiento: 1500 MOD 512 = 476

          dir. lógica: (2 * 512) + 476 = **1500**
       3. marco: 0 / 512 = 0 -> **el marco 0 no está asociado a ninguna página de P1.**
       4. marco: 3215 / 512 = 6 (página 3)

          desplazamiento: 3215 MOD 512 = 143

          dir. lógica: (3 * 512) + 143 = **1679**
       5. marco: 1024 / 512 = 2 (página 2)

          desplazamiento: 1024 MOD 512 = 0

          dir. lógica: (2 * 512) + 0 = **1024**
       6. marco: 2000 / 512 = 3 (página 0)

          desplazamiento: 2000 MOD 512 = 464

          dir. lógica: (0 * 512) + 464 = **464**

       ***Nota:** aunque el marco corresponda a una página, también se debería chequear que la dir. lógica obtenida sea menor al tamaño del proceso (<2000).*
33. **Tamaño de página**: 2048 bytes;

    **C/ dir** = 1 byte;

    **Rango de dir. lógicas:**
    1. **Página 0:** 0 - 2047
    2. **Página 1:** 2048 - 4095
    3. **Página 2:** 4096 - 6143
    4. **Página 3:** 6144 - 8191
    5. **Página 4:** 8192 - 10239

    1. página: 5120 / 2048 = 2

       desplazamiento: 5120 MOD 2048 = 1024

       dir. física: (9 * 2048) + 1024 = 19456
    2. página: 3242 / 2048 = 1

       desplazamiento: 3242 MOD 2048 = 1194

       dir. física: (13 * 2048) + 1194 = 27818
    3. página: 1578 / 2048 = 0

       desplazamiento: 1578 MOD 2048 = 1578

       dir. física: (16 * 2048) + 1578 = 34346
    4. página: 1

       desplazamiento: 0

       dir. física: (13 * 2048) + 0 = 26624.
    5. página: 8191 / 2048 = 3

       desplazamiento: 8191 MOD 2048 = 2047

       dir. física: (2 * 2048) + 2047 = 6143
34. **.**
35.
    1. en el esquema de paginación **simple**, cada proceso tiene su propia tabla de páginas. la dirección virtual (o lógica) se divide en dos partes: un número de página virtual (bits de orden superior) y un desplazamiento (bits de orden inferior).

       el número de página virtual se utiliza como índice en la tabla de páginas para buscar la entrada correspondiente. esta entrada proporciona el número de marco de página físico asociado (si la página está presente en memoria). finalmente, el número de marco se adjunta al extremo de orden superior del desplazamiento para formar la dirección física que se envía a la memoria.
    2. en un esquema de **dos niveles**, la dirección virtual se particiona, por ejemplo, en un campo TP1 (Tabla de Páginas de Nivel Superior), un campo TP2 (Tabla de Páginas de Segundo Nivel) y el Desplazamiento.

       **1.** el campo TP1 se utiliza como índice en la tabla de páginas de nivel superior (o directorio de páginas).

       **2**. la entrada resultante proporciona la dirección (o número de marco de página) de una tabla de páginas de segundo nivel.

       **3**. el campo TP2 se utiliza como índice en la tabla de páginas de segundo nivel seleccionada para obtener el número de marco de página físico.

       **4**. este número de marco se combina con el Desplazamiento para obtener la dirección física.

       Linux, por ejemplo, utiliza un esquema de cuatro niveles para la paginación para mejorar la eficiencia en arquitecturas de 32 y 64 bits
    3. a diferencia de los enfoques tradicionales, la tabla de páginas **invertida** (IPT) tiene una entrada por cada marco de página en la memoria real, en lugar de una entrada por cada página del espacio de direcciones virtuales. cada entrada lleva un registro de qué proceso y qué página virtual se encuentra actualmente en ese marco físico.

       para traducir la dirección virtual (proceso n, página virtual p):

       **1**. el hardware no puede indexar la tabla directamente.

       **2**. se debe buscar en toda la tabla de páginas invertida la entrada que contenga el par (proceso n, página virtual p).

       **3**. si la entrada se encuentra, la posición de esa entrada en la tabla (su índice) es el número de marco de página.
36. **C/ dir.** = 1 byte

    **Tamaño de dir.**: 32 bits

    **Tamaño de pág.**: 2048 bytes

    **Proceso P1**: 51358 bytes de código y 68131 bytes de datos.
    1. tamaño de página: 2048 bytes;

       bits para desplazamiento: 2^d = 2048 -> d = **11**

       bits para identificar página: 32 - d = 32 - 11 = **21**
    2. 2^32 bytes = 4GiB
    3. 2^21 páginas (2097152)
    4. 2^32 / 2048 = 2097152 marcos.
    5. 51358 / 2048 = 26 páginas
    6. 68131 / 2048 = 34 páginas
    7. total: 3391 bytes de fragmentación interna.
       1. para código: 26 * 2048 = 53248 -> 53248 - 51358 = 1890 bytes de fragmentación interna.
       2. para datos: 34 * 2048 = 69632 -> 69632 - 68131 = 1501 bytes de fragmentación interna.
    8. 2^20 * 1024 = 2^30 = 1GiB. la cantidad de PTE es igual a 2^(cantidad de bits dedicados a identificar páginas).
[image1]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKAAAABDCAYAAAAbHw4BAAAIPUlEQVR4Xu2d+W9VRRTH+T/UXxVN3EXKXhUVZI0iS9l+kMXKmqBgEZAgu8FIEAWEshkkbJHFEAsNBBEKSKClCZQKRFoSsGUrBEggXP0OOZe5p/e+N3Pffb3vPs8nmfA6M3d5d773zJkzM49WjiDESCueIQgtiQhQiBURoBArIkAhVkSAOcS1a9fcz01NTc7Dhw+10vxEBJgDQGiLFn3jVFdXO93f6+H809Cg8vH53r17rHZ+IQLMAerr652tW7c6patXO7t2/ermd+rcRQQotBy9evdxbt68qT7fv3/fad+hI6uRf4gAc4jnX3jR/Xzu3Dln7LjxzsW6Oq1G/iECtOD69evOL9u3O088+ZTrp0UFLB66XGLhwq+dU6eqnXHjJzyulIeIAA2ZPXuOs3//fmWZsiFAwP29hoZGz9/5iAjQEggvWwL8PyICtEQEGC0iQEtEgNEiArREBBgtIkBLbAWIWQ4EmsvK9kSeysvL+eUShwjQkjACXL1mjToGacjQYWokjePTpbO1tUpoOL6oaLDT5vW27nkoJX2kLAK0xFaAADE+XTSrVpXyKkZAzDt37nJaP/uce67du3fzaolCBGhJGAGCffv2eUR46dIlXsWKCxcuOMOGD3faFhTwokQhArQkrABBcfEnrgCffqZ1JMutECCvq6vn2YnBWIBweLkT7JeoYdDtzJ03Tz0gPX27eLGqx32X0tJS37roYg4dOuSpGwdYGKBbMEq2CwZeevkV99gBAwfy4lAMGlTEsxSwsrx9gpLfC8XbA2nbtm1KC39fvMirh8JYgPzBp0qg5uzZZvl6ggUYP+HxPGdh4RvN6uip34f9I7EYcYNG1L8XXtRsMWHixGbPMVXSuXv3brNyntasXes5JgxGAjx8+LAza9ZXnrwlS75TN6E/QAiEfxGs8Og/YIAnD/y8caOqO2r0aDcP1wmq36dvX2U94EslnaqqU24j4sXLFnjJ9QEP2uqzyVOatRHy27Xv4Mkj0BZoE7SNDg2s5syd68m3Ja0AsUzcTxDvduvmvPpaG56tVvESdJObN2/RajziwIHf1QPSHwY9HL/69Dbrgk0yX86c6Ypw6dLvI7fuCPXwEfLx48dVm6HtOB+NGMmzFLg/PHu+UILKbF0QTloBYlkQboCDi0+bNp1ne/LwhVFP3+tAkNjQtRJ4OEH1UQbB8oeaZHR/8P0P+vHijPBrM3rmK1eu8uTfvn27WR7A4ljU59ZPL5s69QteZEVaAfqBRZK4ONarpcLP3APqqpGoC9djZRzqrptu3eJFiQbfh74zEgLO2YRe8MuXL/MiX7A9APW59Tt9+rTTo2cvlTIllAAppuVnqXTgt/mZ6GXLl6vjJ0+Z4uZhVIw8vT6++IkTJ5Tlw56JdGDBKJ9NSJWyOQAwpVv37q4A/Z5VlNB1uKCCgN/PDQJGv5iRQTD8xo0bnrIwWAsQ5hp+GL8xP/S3mxK6HUTzOevWrVflHxcXu6GBnr16q7yKI0d4dV8aGxubiSxVMm2IbKL3BkgYJWeDK1euqPPry/7TgRXaXd9+x20PWEQYgxUrfgx8eWEEbLAWIKwfbsJvYKJDFs3Pf/CDrCW2JurANzERe5LBqFgPQ50/f55XyRjsuMO5/XzDIFAfx+nA7UL+0GHDPfkALoXtqN5agGT9/EaqOvSFTa0M6mJkqI8G8RmDmnwXICAfGLMl2QA77vzCKUHAEOB+YDl19u4tV/nonaLAWoBvvtVV3UCqAUhQvCmIoHANhYBMz4O3kpxjk7RlS3q/sqXAy4aexXSAYAvEhxCZ6fmDBiCIiiCfh20ePHiQdkzgh7UAcXGkVHErCijjrTMB9XFO/gWwCYiuByDUo0ePeerkA9QF499sABHhGfqFWoKgADSH/PLpM2aovxFvbPjPn8a9wyj9sGwZOyI1aQWIRl+//iflHEP1JAiaG9Sd0atXr6o8mjft3aev+jtIrLw+nZPAejjyjQDKxowZ65bnA5ivxcAMoaYogT9GzxNzzmS18Dfm6P1AW9IxqI92wWcMPAnsVUYZ+ZIIam/fsUOJPMw+5rQCzAUwQsaD4BYy6ZDrETSizFV+KytTIkZ3TGBqFi6ELYkQYD5CPh/CQfkAumsIUv9tGxNEgDGxZ8/eyKff4gSWHD77pEmf8qKUiABjAI47/L4oQOBX7wrjAj5gGGsuAmxhEOeLajU0Qh84V5LnyEWABnQpLFQjQnSbaPSCgnZugNxmVTPWzkGAmQoG1gb3hOvbzjzkGiLANGBKEXPXiHtha+TnJSVOTU2NKhs8ZKjxKJYGHZmKr7KyUi0epXCYzdRaLiICTANmdACmIGEFK6uq3DJaJEs/KpmKdFsOwiY+VZY0RICGwHrxEAOtr0sF9lagu+bTgFEkLOBIOiJAAzATAKHplo7y/FaFCOaIAA2gBbg6mPPEpvCTJ0+qGRq+kEIwQwRoAOJs+s/nAkzWwy+EJTx48A8V2xPsEQEagAl3HuyFALHmESNgfWOVYIcI0IAzZ874Bo6xNKy29i+ebQT+J6Sw3MowlJNLiABjAH6j7crnkpKpTsdOndUUHuZc8wURYEyYBK91MOeLBL9TBCiEBtNotjvHdESAQmjwK1+YisPSeHTDgP9KFU8VFRWec4gAhdBs2LDB3WZg2wUTIkAhIzBzYrpZyw8RoJARWLo+f8EC59ixP9Xf+u89+6URI0d5jhcBCqG5c+eO2taIlcPz5s/nxUYUDR7ibNq0mWcnFhFgC4MANH7DRniECFCIFRGgECsiQCFWRIBCrIgAhVgRAQqxIgIUYkUEKMSKCFCIFRGgECv/Amcm4uf6h3djAAAAAElFTkSuQmCC>

[image2]: <data:image/png;base64,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>

[image3]: <data:image/png;base64,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>

[image4]: <data:image/png;base64,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>

[image5]: <data:image/png;base64,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>

[image6]: <data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAdsAAACYCAYAAACswUNCAAATUElEQVR4Xu3c+ZsVxaHG8fwJV1EeUHYVQSEgghcFvQquuCtEhcuD4BZDBuLCYoIIIovDwAyLssMwwMwwwwAStrjvcclCvJqI8TFGjbn35m7/QV3e4qm2p7pPnzkyxRnO+f7weaZPdXedPt3V9VYv8IN/Or2LAQAA4fzALwAAAO2LsAUAIDDCFgCAwAhbAAACK5mwPf2Ms8x5fX+YSvP85QEAOFlKImzP7n5uImB9WsZfr9TdMXaCOXDwlUR5McyZu9Ds3fdiojzNq6+9Z5d/8OHp5sPffpKY316OfvZ1ogzpXFu64qrrE/NONrULtRG/vBDNLQdM06790eeLh400X371n+atd36TWBbtZ936OjN33uJEeS4PT33MNOzcay4ceHFiXiHnb3u0mRN1yoetH6pZup7VK7F+KaiYPtN8++//18pfvvqPYw31UfPBbz5OLF8MCxYtMy++8naiPI22Wcvrd3362VeJ+e1F+8kvK3e33n53oi2Ja0vXXndLYp2TTe3iRNv13/7+v60+q76ly1ebgYOGJZZFfiNGjm7VXr765r/MWd36JJZ74ZcvmZqV6xPluSxYWGV+9fJbdjDkzyvk/G2PNnOiMsP24K9ej2hj/fnF1r37eYlAdRYtrjabtjQkyv06Sok6yqxwUuPXMuece2FquaY1grzplnGJkaQr9+tMqy/uytFjzHXX35oI21zbIllhq3UuuviyVmWqX9/j16MOwP0uvw59f/xk1XbcePOdti5/+XKkfacBm18el3YsTrQtpR0vR9ukY+R3nFltydH3uc5fy7k24OarncX7OG1j2ra49uyXq/60Nlgu/PbS1PxLs2//y9Fn7Ru/rUiu/azytP3sjp2m4+dvrnpytZliyAxb/ZjKqpWWGuPb7/42dYRRLH6QOgcPvWbG3TXJTv/uyKet5pXq1a2oscXDKd7AplbMMN98+z9m5eoN5suv/mGeXbrClusYax1R+UeffG4+/+JbW65jrTpU/sdPvzRHPjoaXRGoPi2jAFW9KvdHsu998FF0a+7rv/13FLZffPn31G1x0sL21+8fsd+3fkOdLdMAUOWf/Okvdnu1jr6jbvsue4Jpe97/8N/Mjobddj1tm26Bavq119+zI293sj6zaLndppY9B+33qL74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>