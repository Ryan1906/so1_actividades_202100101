# Instalación del Servicio de Saludo y Fecha

Este servicio imprime un saludo y la fecha actual infinitamente con una pausa de un segundo.

## Pasos de Instalación

1. Clona el repositorio o copia el script `saludo_script.sh` en tu sistema.
2. Crea el archivo de servicio `saludo.service` en `/etc/systemd/system/` con los detalles proporcionados.
3. Recarga systemd para que reconozca el nuevo servicio:

   ```bash
   sudo systemctl daemon-reload
