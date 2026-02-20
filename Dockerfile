# 1. Imagen base oficial de Python (versión slim para ahorrar espacio)
FROM python:3.9-slim

# 2. Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# 3. Copiar el archivo de dependencias primero para aprovechar la caché de Docker
COPY requirements.txt .

# 4. Instalar las dependencias de Python
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar el resto del código de la aplicación al directorio de trabajo
COPY . .

# 6. Exponer el puerto en el que corre Flask (por defecto el 5000)
EXPOSE 5000

# 8. Comando para ejecutar la aplicación
CMD ["python", "app.py"]