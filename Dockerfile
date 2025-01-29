# Используем официальный образ OpenJDK 17 с минимальной базой (slim)
FROM openjdk:17-jdk-slim

# Определяем аргумент JAR_FILE, который указывает путь к собранному JAR-файлу
ARG JAR_FILE=target/demo-0.0.1-SNAPSHOT.jar

# Копируем JAR-файл из указанного пути (ARG) в контейнер под именем app.jar
COPY ${JAR_FILE} app.jar

# Указываем команду запуска контейнера: выполнить JAR-файл с помощью Java
ENTRYPOINT ["java", "-jar", "/app.jar"]
