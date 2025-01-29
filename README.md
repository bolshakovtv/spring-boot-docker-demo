---

# **Spring Boot Docker Demo**

## 📖 Описание
Простое Spring Boot приложение, возвращающее текст `"Hello docker!"` на GET-запрос.

---

## 🚀 Запуск

### Локально:
1. Клонируйте репозиторий:
   ```bash
   git clone https://github.com/bolshakovtv/spring-boot-docker-demo.git
   cd spring-boot-docker-demo
   ```
2. Соберите и запустите приложение:
   ```bash
   ./mvnw clean package
   java -jar target/demo-0.0.1-SNAPSHOT.jar
   ```
3. Перейдите в [http://localhost:8080](http://localhost:8080).

---

### В Docker:
1. Соберите образ:
   ```bash
   docker build -t spring-boot-docker-demo .
   ```
2. Запустите контейнер:
   ```bash
   docker run -p 8080:8080 spring-boot-docker-demo
   ```
3. Перейдите в [http://localhost:8080](http://localhost:8080).

---

## 📂 Структура
- `src/` — Код приложения.
- `pom.xml` — Конфигурация Maven.
- `Dockerfile` — Для сборки Docker-образа.

--- 
