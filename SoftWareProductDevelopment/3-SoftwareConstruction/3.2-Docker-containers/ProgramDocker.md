### Кроки роботи з Docker-образом та створюваним Docker-контейнером для виконання програми на JavaScript

#### Крок 1. 
Завантажити Docker-образ з Node.js:
```
docker pull node:latest
```
#### Крок 2.
Запустити контейнер з Node.js для виконання вашої програми, виконавши наступну команду (для Windows-терміналу):
```
docker run \
--name avramova-node \
-w //app \
-v /${PWD}://app \
--network container:avramova-postgres \
--rm \
node:latest node ProgramClientCode.js
```
