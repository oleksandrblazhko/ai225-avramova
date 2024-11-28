const { Client } = require('pg');

// Параметри підключення до БД
const client = new Client({
    host: 'localhost',
    port: 5455, // порт, який було вказано під час запуску Docker-контейнера
    database: 'avramovadb', 
    user: 'postgres',
    password: '1234',
});

client.connect()
    .then(() => {
        console.log('Connection established successfully!');
        return client.end(); // закриваємо підключення
    })
    .catch(err => {
        console.error('Connection error', err.stack);
    });
