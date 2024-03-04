
## Paso 1: Crear los Named Pipes
Abre una terminal y ejecuta los siguientes comandos para crear dos Named Pipes, uno para la entrada del usuario y otro para la salida del usuario.

- mkfifo user1_to_user2
- mkfifo user2_to_user1


## Paso 2: Crear el script para el Usuario 1
Crea un script llamado user1.sh con el siguiente contenido:

    #!/bin/bash

    while true; do
        # Lee la entrada del usuario
        read -p "User 1: " message

        # Envia el mensaje al Named Pipe del Usuario 2
        echo "$message" > user1_to_user2

        # Lee la respuesta del Usuario 2 desde el Named Pipe
        response=$(cat user2_to_user1)
        echo "User 2: $response"
    done

## Paso 3: Crear el script para el Usuario 2
Crea un script llamado user2.sh con el siguiente contenido:

    #!/bin/bash

    while true; do
        # Lee la entrada del usuario
        read -p "User 2: " message

        # Envia el mensaje al Named Pipe del Usuario 1
        echo "$message" > user2_to_user1

        # Lee la respuesta del Usuario 1 desde el Named Pipe
        response=$(cat user1_to_user2)
        echo "User 1: $response"
    done

## Paso 4: Ejecutar los scripts en terminales separadas
Abre dos terminales y ejecuta los scripts del Usuario 1 y del Usuario 2 en cada una de ellas.

### Terminal 1
./user1.sh

 ### Terminal 2
./user2.sh
