# Utiliza una imagen base de Java
FROM openjdk:17-jdk-alpine

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo JAR generado por Maven a la imagen
COPY target/app-vouchers-0.0.1-SNAPSHOT.jar app-vouchers.jar

# Expone el puerto en el que el contenedor escuchará las solicitudes
EXPOSE 8080

# Comando para ejecutar la aplicación Spring Boot al iniciar el contenedor
CMD ["java", "-jar", "app-vouchers.jar"]
