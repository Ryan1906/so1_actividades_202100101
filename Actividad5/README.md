## a) ¿Cuántos procesos únicos son creados?

Se crea un proceso principal (main). Después de la primera bifurcación (fork()), se crean dos procesos hijo. Luego, dentro del bloque if (pid == 0), hay otra bifurcación (fork()), lo que genera dos procesos más para cada uno de los procesos hijos anteriores. Esto da un total de 2 (proceso principal) + 2 (primeras bifurcaciones) + 2 * 2 (segundas bifurcaciones dentro del bloque if) = 10 procesos únicos creados.
## b) ¿Cuántos hilos únicos son creados?

En el bloque if (pid == 0), se crea un hilo mediante pthread_create(). Por lo tanto, se crea al menos un hilo. Sin embargo, se debe tomar en cuenta que el hilo puede no haber finalizado antes de que el proceso principal o los procesos secundarios terminen, ya que no hay unirse (pthread_join()) en el código proporcionado.