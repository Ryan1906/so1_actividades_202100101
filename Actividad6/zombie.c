#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    pid_t child_pid = fork();

    if (child_pid < 0) {
        perror("Fork failed");
        exit(EXIT_FAILURE);
    } else if (child_pid == 0) {
        // Proceso hijo
        printf("Proceso hijo en ejecución...\n");
        // Hijo termina inmediatamente sin esperar
        exit(EXIT_SUCCESS);
    } else {
        // Proceso padre
        printf("Proceso padre esperando...\n");
        sleep(10);  // Espera 10 segundos
        // Padre imprime el estado del proceso hijo
        system("ps -l");
    }

    return 0;
}