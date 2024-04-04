# Completely Fair Scheduler (CFS) de Linux
El Completely Fair Scheduler (CFS) es el planificador de procesos predeterminado en el kernel de Linux desde la versión 2.6.23. Su objetivo principal es distribuir el tiempo de CPU de manera justa entre los procesos que compiten por los recursos del sistema. A continuación, describiré las características principales y el funcionamiento del CFS:

## Características principales del CFS:
Equidad y justicia: El CFS intenta asignar una cantidad equitativa de tiempo de CPU a todos los procesos en ejecución, independientemente de su prioridad o carga de trabajo. Esto se logra utilizando un algoritmo basado en el tiempo de ejecución acumulado de cada proceso.

### Prioridades dinámicas:
 A diferencia de algunos otros planificadores de procesos que se basan en prioridades estáticas, el CFS asigna prioridades dinámicas a los procesos en función de su comportamiento y necesidades. Esto permite que los procesos más activos obtengan una mayor proporción de tiempo de CPU.

### Multiprocesamiento simétrico (SMP):
 El CFS es eficiente en sistemas con múltiples núcleos de CPU (SMP). Distribuye de manera equitativa la carga de trabajo entre los núcleos disponibles, evitando el hambre de CPU y garantizando un rendimiento uniforme en todo el sistema.

### Interactividad mejorada: 
El CFS está diseñado para mejorar la capacidad de respuesta del sistema, especialmente en entornos de escritorio y aplicaciones interactivas. Prioriza los procesos interactivos para garantizar una experiencia de usuario fluida.

## Funcionamiento del CFS:
El CFS utiliza una estructura de datos llamada árbol rojo-negro para representar y organizar los procesos en una cola de ejecución. Cada nodo del árbol representa un proceso y contiene información sobre su tiempo de ejecución acumulado y su prioridad dinámica.

Cuando un proceso solicita tiempo de CPU, el CFS selecciona el proceso con la menor cantidad de tiempo de ejecución acumulado y lo programa para ejecutarse. Esto garantiza que todos los procesos reciban una cantidad equitativa de tiempo de CPU a lo largo del tiempo.

Para calcular la prioridad dinámica de un proceso, el CFS utiliza la fórmula de tiempo de ejecución normalizado. Esta fórmula ajusta la prioridad de un proceso en función de su tiempo de ejecución relativo en comparación con otros procesos en la cola de ejecución.

