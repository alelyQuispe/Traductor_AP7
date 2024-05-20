# Usar una imagen base ligera con OpenJDK 17
FROM openjdk:17-jdk-alpine

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR generado en la etapa de construcción de Maven al directorio de trabajo del contenedor
COPY target/apitraslate-0.0.1-SNAPSHOT.jar app.jar

# Exponer el puerto en el que la aplicación Spring Boot está configurada para ejecutarse
EXPOSE 8080

# Definir el punto de entrada del contenedor para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
