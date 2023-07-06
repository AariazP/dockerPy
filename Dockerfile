FROM ubuntu:latest

# Establecer la imagen base de Python
FROM python:3.9-slim

# Establecer el directorio de trabajo en la imagen
WORKDIR /app

# Copiar los archivos de la aplicación al directorio de trabajo
COPY . /app

# Instalar las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 8000

# Definir el comando predeterminado para ejecutar la aplicación
CMD ["python3", "main.py"]

LABEL authors="alejandroarias"

