

#Variable de entorno Github
GITHUB_USER="Ryan1906"

# Consulta de Gthub API
API_URL="https://api.github.com/users/$GITHUB_USER"
DATA=$(curl -s "$API_URL")


USER_ID=$(echo "$DATA" | jq -r '.id')
CREATED_AT=$(echo "$DATA" | jq -r '.created_at')

# Mostrar Mensaje
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT."

# crea fecha temporal
DATE_DIR="/tmp/$(date +'%Y%m%d')"
mkdir -p "$DATE_DIR"

# Crea el registro
LOG_FILE="$DATE_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $USER_ID. Cuenta fue creada el: $CREATED_AT." >> "$LOG_FILE"


echo "Datos guardados en $LOG_FILE."

# Configurar cronjob para ejecutar el script cada 5 minutos
(crontab -l ; echo "*/5 * * * * /home/rjrsi/SO1_Actividades_202100101/Actividad2/script.sh") | crontab -

