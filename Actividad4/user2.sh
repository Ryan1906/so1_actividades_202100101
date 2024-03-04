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
