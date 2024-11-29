### Кроки роботи з Docker-образом та створюємим Docker-контейнером для СКБД PostgreSQL

#### Крок 1. 
Завантажити Docker-образ для СКБД PostgreSQL з назвою postgres через команду:
```
docker pull postgres
```
#### Крок 2. 
Запустити Docker-образ postgres зі створенням Docker-контейнеру з такими характеристиками:
- назва `avramova-postgres`;
- перевизначення стандартного для СКБД PostgreSQL мережевого порту серверу `5432` на новий `5455`, який побачать зовнішні по відношенню до контейнера програми-клієнти;
- визначення пароля користувача-адміністратора СКБД;
- створення робочого каталогу `//scripts`, в якому буду зберігатися скрипти для ініціалізації БД;
- встановлення зв’язку між поточним локальним каталогом через посилання на змінну `PWD` - `$(PWD)` та каталогом `//scripts` із Docker-образу;
- запуск процесу серверу СКБД у фоновому режимі.

Для вказаних дій виконати команду:
```
docker run \
--name avramova-postgres \
-p 5455:5432 \
-e POSTGRES_PASSWORD=1234 \
-w //scripts \
-v $(PWD)://scripts \
-d \
--rm \
postgres
```

#### Крок 3. 
У Docker-контейнері `avramova-postgres` виконати команду `bash` для початку роботу з облонкою командного рядку: 
```
winpty docker exec -it avramova-postgres bash
```
#### Крок 4. 
В оболонці командного рядку виконати команду `createdb` для створення БД `avramovadb` від імені користувача-адміністратора `postgres` через команду:
```
createdb avramovadb -U postgres
```
#### Крок 5. 
В оболонці командного рядку завантажити скрипти `Program-Classes.sql` та `Program-Methods.sql`, розташований в робочому каталозі, до БД через команду:
```
psql -U postgres -d avramovadb < /scripts/Program-Classes.sql
```
```
psql -U postgres -d avramovadb < /scripts/Program-Methods.sql
```
### Крок 6. 
Вийти з оболонки командного рядку:
```
exit
```
### Крок 7. 
Зупинити роботу контейнера avramova-postgres через команду:
```
docker stop avramova-postgres
```
