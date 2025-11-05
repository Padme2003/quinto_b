# Imagen base oficial de Python
FROM python:3.11-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar primero requirements.txt para aprovechar caché de Docker
COPY requirements.txt /app

# Instalar dependencias
RUN pip install -r requirements.txt

# Copiar el resto del código
COPY app.py /app

# Exponer el puerto donde corre Flask
EXPOSE 5000

# Comando por defecto
CMD ["python", "app.py"]