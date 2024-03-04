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
