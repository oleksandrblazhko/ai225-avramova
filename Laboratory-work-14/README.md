## Основи керування віртуальними ОС

### 2.1 Створення віртуальної машини через графічний інтерфейс

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/d5dc8125-8b43-4f27-87e8-08bc1b8573f7)

2.1.1 Встановити програмне забезпечення Oracle VM Virtual Box

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/769bb0d9-bbc6-466c-b586-a5e3244b5c33)

2.1.2 Отримати з інтернету ISO-образ для 32-бітної ОС Server Linux Ubuntu 14.04.6.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b21495bb-2785-44d9-a977-7be8f10d9519)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/968f7711-bdb3-498c-940f-e5955dcf7024)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/90cae68a-a9f7-4572-bfd4-47e3a18992a0)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/6953e7b5-8700-4595-b993-bf6cf4671dfa)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/37b5bd71-d74b-46e2-9c36-56e286bced0d)


2.1.3 Створити віртуальну машину, використовуючи графічний інтерфейс та
враховуючи наступні значення параметрів:
- назва = «Linux of Surname», де Surname – ваше прізвище транслітерацією, наприклад
«Linux of Blazhko»;
- файл ISO-образу = ubuntu-14.04.6-server-i386.iso;
- розмір оперативної пам’яті (Мб) = 10 * group + var, де group – номер вашої групи,
var – номер вашого варіанту, наприклад, 10 * 221 + 5 = 2215 Мб;
- кількість ядер процесору = 1;
- розмір жорсткого диску (Мб) = 40 * group, наприклад, 40 * 221 = 8840 Мб = 8,84 Гб;
- правило Port Forwarding на першу мережеву карту, яке буде перенаправляти
мережеві пакети для з’єднання через SSH-протокол із guest-ОС (IP-address=10.0.2.15, SSH-
port=22) на IP-адресу=127.0.0.1 з використанням SSH-port=1234.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b896cb2d-9b53-4989-9055-6f256d838dad)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/860244a2-7a81-409d-a111-1a7121803f62)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7aa67ef2-72d5-4d12-983f-1d9ae93b5e8a)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/0c66bfaa-915a-46ab-9cea-c47b6e3c0e51)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/49e58230-a55a-45af-83c6-78c937ab6ea7)

2.1.4 Запустити віртуальну машину, створену у пункті 2.1.3, та виконати інсталяцію
віртуальної ОС, враховуючи параметри:
- hostname = os-surname, наприклад, os-blazhko;
- user account = surname, наприклад, blazhko;
- time zone = Kiev;
- Software = OpenSSH server;

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/52e84142-cf18-4a30-8a31-634ea768b8a5)

2.1.5 Після інсталяції та перезапуску віртуальної машини виконати вхід до віртуальної
ОС, використовуючи створений обліковий запис.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7074e577-7649-4c1e-8fc7-b4fc7911e91c)

2.1.6 Повторити вхід до віртуальної машини через SSH-протокол.

### 2.2 Створення віртуальної машини через інтерфейс командного рядку

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/9940d6c0-e6cd-457a-9dea-e3dd0bf9623d)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/8fcd0c45-b73f-431d-bd59-143a052a7c5e)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/a6b380f9-fbc6-4a84-90f8-58ec2a45b63e)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/a3ffdbfc-e683-4a5b-abf9-385e59872b06)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/f2937e96-6128-4d58-a231-1cfd3dd24bf3)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/e3f01127-9113-4150-a88c-caebe02267e7)

2.2.1 Створити віртуальну машину, використовуючи інтерфейс командного рядку та
враховуючи наступні значення параметрів:
- назва = «Linux of Surname 2», де Surname – ваше прізвище транслітерацією,
наприклад «Linux of Blazhko»;
- розмір оперативної пам’яті (Мб) = 10 * group + var, де group – номер вашої групи,
var – номер вашого варіанту, наприклад, 10 * 221 + 5 = 2215 Мб;
- кількість ядер процесору = 1;
- розмір оперативної пам’яті графічної карти (Мб) = 100 + group2, останні дві цифри
номеру групи, наприклад, 100 + 21 = 121 Мб;
- перша мережева карта з конфігурацією NAT;
 правило Port Forwarding на першу мережеву карту, яке буде перенаправляти
мережеві пакети для з’єднання через SSH-протокол із guest-ОС (IP-address=10.0.2.15, SSH-
port=22) на IP-адресу=127.0.0.1 з використанням SSH-port=1234;
- контролер IntelAHCI з інтерфейсом sata-типу за назвою SurnameSATA, Surname –
ваше прізвище транслітерацією, наприклад «BlazhkoSATA»;
- контролер PIIX4 з інтерфейсом ide-типу за назвою SurnameIDE, де Surname – ваше
прізвище транслітерацією, наприклад «BlazhkoIDE»;
- віртуальне сховище даних, розміщене у файлі з назвою DiskSurname.vdi, наприклад,
DiskBlazhko.vdi, та розміром (Мб) = 40 * group, наприклад, 40 * 221 = 8840 Мб;
- ISO-файл ubuntu-14.04.6-server-i386.iso з інсталяцією ОС Linux

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/297a2620-f2e3-4bab-958e-8d103baa0022)

2.2.2 Запустити віртуальну машину, створену у пункті 2.2.1, використовуючи інтерфейс
командного рядку.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7bc59d78-1195-42e3-a173-7217365c43f2)

2.2.3 Перебуваючи на першому екрані процесу інсталяції віртуальної ОС, призупинити
роботу віртуальної машини.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/9a5ff34d-05db-45fb-b860-664dafdc9abd)

2.2.4 Повторно запустити призупинену віртуальну машину, створену у пункті 2.2.1.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/5506ba0e-61b4-4079-b836-8173cd48636d)

2.2.5 Зупинити віртуальну машину, створену у пункті 2.2.1.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/90cf0e87-045e-4d81-9c1b-22f08e94d1ae)

2.2.6 Зняти з реєстрації віртуальну машину та видалити всі пов’язані з нею файли.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/bf64bd1f-42fd-457a-b479-91adf84a3674)

2.2.7 Зберегти всі команди керування віртуальною машиною, які було виконано у
попередніх пунктах, у файлі CreateVMSurname.sh, де Surname – ваше прізвище
транслітерацією, наприклад «CreateVMBlazhko.sh»;

### 2.3 Створення групи користувача та облікового запису користувача ОС Linux

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7074e577-7649-4c1e-8fc7-b4fc7911e91c)

2.3.1 Встановити з’єднання із віртуальною машиною, яка створена у розділі 2.1., через
SSH-команду.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/3e2384cc-f900-400f-b7fa-ea6070c38e69)

2.3.2 Створити групу користувача, назва якої співпадає з назвою вашої студентської
групи транслітерацією, наприклад, AI211;

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/9e4957da-b66f-4f74-90f1-b8be04e996a6)

2.3.3 З використанням не інтерактивної команди створити обліковий запис користувача
з урахуванням того, що:
- ім я користувача співпадає з об’єднаними вашим прізвищем та іменем транслітерацією, наприклад, blazhko_oleksandr;
- каталог користувача співпадає з вашим ім’ям;
- шлях до оболонки командного рядка = /bin/bash
- користувач входить до раніше створеної групи.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/a123f21d-f595-4bca-b963-51166a40b13a)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7f5259d4-4c95-4c9e-a16d-8cd33b2a187f)

2.3.4 В окремому псевдотерміналі увійти з’єднатися з віртуальною машиною під
іменем створеного користувача. Вийти із псевдотерміналу.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/4a1ad31f-5b67-4b4a-9b4a-d9546c5ff5e2)

2.3.5 Видалити створений обліковий запис користувача.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b836af5b-24a9-4bae-9e89-a97f9297017d)

2.3.6 Видалити створену групу.

### 2.4 Встановлення СКБД PostgrеSQL та налаштування роботи

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/474a0a20-1042-459a-bf38-805ee26bb8e9)

2.4.1 Використовуючи команду керування програмними пакунками, наприклад, apt,
встановити програмний пакунок СКБД PostgrеSQL

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/91123928-c0c1-4f08-b832-ee966681c520)

2.4.2 Від імені користувача postgres створити БД Surname, де Surname – ваше прізвище
транслітерацією.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/bca16892-06c5-4436-b07b-5e36346ae550)

2.4.3 Від імені користувача postgres створити користувача СКБД з іменем Surname, де
Surname – ваше прізвище транслітерацією.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/6fcaf578-2a0d-400e-9978-2e2138f5110e)

2.4.4 З’єднатися з СКБД PostgrеSQL, використовуючи створеного користувача та БД.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/2deedafa-ad34-4f04-a673-3459c85990ad)

2.4.5 Від імені користувача postgres зупинити сервер СКБД.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/f83074d3-63cb-4193-ae5a-deff7fa8d80b)

2.4.6 Видалити програмний пакунок СКБД PostgrеSQL.

### 2.5 Встановлення останньої верcії СКБД PostgreSQL із сирцевих кодів

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/46649ad0-a06f-462c-baf1-b1307851065b)

2.5.1 Встановити програмні пакунки, від яких залежить побудова СКБД PostgreSQL
версії 15.3 із сирцевих кодів

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/844e6ca3-c64a-4ae5-912d-99fba5ccb5c1)

2.5.2 Виконати процес побудови СКБД PostgreSQL версії 15.3 із сирцевих кодів та
виконати інсталяцію програм серверу.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/682ecfe0-87b2-43ac-bc2a-c6f85a358084)

2.5.3 Запустити сервер СКБД PostgreSQL версії 15.3.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/3f2e775a-9855-4b1a-95a7-f02a5b280dcf)

2.5.4 Перевірити з’єднання програми-клієнта із сервером СКБД PostgreSQL,
використовуючи параметри зазамовчуванням.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/d58cfeec-8132-47a4-bbf2-62b3032279fb)

2.5.5 Зупинити сервер СКБД PostgreSQL.

### 2.6 Керування обмеженням використання ресурсів ОС

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/bd290663-9a8f-47d6-9725-96e1538692b9)

2.6.1 Встановити з’єднання із віртуальною машиною, яка створена у розділі 2.1., через
SSH-команду від імені користовувача, створеного під час інсталяції віртуальної ОС.

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/5a147cd4-22f5-4acc-8612-b0329dca326f)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/d46d5a5d-f357-46c2-9e88-14f92d7534e6)
![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/c0fc1b55-491f-423d-bce5-8826ade405dc)

2.6.2 Перевірити роботу команди ulimit за всіма прикладами з таблиці 1 з підрозділу
1.3.5, показавши на екрані:
- приклад кожної команд;
- приклад операції, яка порушує обмеження;
- приклад повідомлення про помилку щодо порушення обмеження.
