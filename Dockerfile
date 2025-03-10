# Usa la imagen oficial de Python 3.9
FROM python:3

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de requerimientos
COPY requirements.txt /app/

# Instala las dependencias con python3
RUN pip3 install --no-cache-dir -r requirements.txt

# Copia el código de la aplicación al contenedor
COPY . /app/

# Expone el puerto 8000 para el servidor de desarrollo
EXPOSE 8000

# Ejecuta el servidor de Django usando python3
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
