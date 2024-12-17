# Utilise l'image OpenJDK 21
FROM openjdk:21-jdk-slim

# Définit le répertoire de travail dans le conteneur
WORKDIR /app

# Copie le fichier JAR généré
COPY target/authapi.jar authapi.jar

# Expose le port 8080
EXPOSE 8080

# Commande pour démarrer l'application
ENTRYPOINT ["java", "-jar", "authapi.jar"]
