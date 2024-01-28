## Tipos de kernel y sus diferencias

El kernel es el núcleo de un sistema operativo. Es el software que se ejecuta directamente en el hardware del sistema y proporciona los servicios básicos que necesitan otros programas para funcionar.

Existen dos tipos principales de kernels:

* **Kernel monolítico:** Es el tipo de kernel más tradicional. Consiste en un único módulo que contiene todas las funciones del kernel.
* **Kernel modular:** Consiste en una colección de módulos independientes que pueden ser cargados y descargados según sea necesario.

| Característica | Kernel monolítico | Kernel modular |
|---|---|---|
| Estructura | Un único módulo | Colección de módulos |
| Tamaño | Más grande | Más pequeño |
| Flexibilidad | Menos flexible | Más flexible |
| Rendimiento | Menor rendimiento | Mayor rendimiento |

## User vs Kernel Mode

El modo usuario y el modo kernel son dos estados de ejecución en los que puede estar un programa en un sistema operativo.

* **Modo usuario:** Es el estado de ejecución normal de los programas. En este modo, los programas tienen acceso limitado a los recursos del sistema.
* **Modo kernel:** Es un estado de ejecución especial que se utiliza para ejecutar tareas críticas del sistema operativo. En este modo, los programas tienen acceso completo a los recursos del sistema.

La diferencia entre los dos modos es que, en modo usuario, los programas están limitados por las reglas del sistema operativo. En modo kernel, los programas tienen acceso completo al hardware y al sistema operativo.

## Interruptions vs traps

Las **interrupciones** y las **traps** son dos eventos que pueden interrumpir la ejecución de un programa en modo usuario.

* **Interrupción:** Es un evento generado por el hardware del sistema. Por ejemplo, una interrupción puede ocurrir cuando el hardware detecta que un dispositivo externo ha enviado un dato.
* **Trap:** Es un evento generado por el software. Por ejemplo, una trap puede ocurrir cuando un programa intenta realizar una operación ilegal.

La principal diferencia entre las dos es que las interrupciones son eventos generados por el hardware, mientras que las traps son eventos generados por el software.
