# Принцип работы
Посмотрим содержимое файла docker-compose.yml  

environment:  
POSTGRES_DB: "test"  
POSTGRES_USER: "newuser"  
POSTGRES_PASSWORD: "password"  

Тут мы создаем пользователя и БД.  

./script/init.sql:/docker-entrypoint-initdb.d/init.sql  
Тут мы создаем таблицу для БД  

**_[При развертывании докера не работает команда create_all.]_**  
(Режим дебага тоже)  

