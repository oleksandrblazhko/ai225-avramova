## Основи керування файлами у файловій системі Unix-подібних ОС

### 1 Робота з віддаленим Linux-сервером через термінальний режим роботи
![зображення](https://user-images.githubusercontent.com/99131376/230174021-42b1361d-f4a4-4e51-a03f-606af035383f.png)

Рис. 1 – Фрагмент екрану з рішення завдання "2.1.9 Змінити пароль вашого облікового запису користувача ОС Linux."

![зображення](https://user-images.githubusercontent.com/99131376/230174086-0ee500ba-c466-4a5b-96aa-7c2a6977647d.png)

Рис. 2 – Фрагмент екрану з рішення завдання "2.1.10 Завершити роботу у віддаленому терміналі через команду exit та,
знаходячись на локальному комп’ютері, виконати команду з налаштування встановлення з’єднання із терміналом ОС Linux без необхідності передачі логіну та паролю користувача."

![зображення](https://user-images.githubusercontent.com/99131376/230174273-5f3fad83-39e5-4480-ad77-52e60c14e683.png)

Рис. 3 – Фрагмент екрану з рішення завдання "2.1.11 Виконати повторне з’єднання з віддаленим терміналом ОС Linux без
необхідності вводу паролю."

![зображення](https://user-images.githubusercontent.com/99131376/230174384-42d3d86e-47e1-486c-9cd0-acb22040bbab.png)

Рис. 4 – Фрагмент екрану з рішення завдання "2.1.12 Отримати на екран з файлу /etc/password один рядок з описом облікового
запису вашого користувача, а з файлу /etc/group – рядок з описом вашої основної групи."

![зображення](https://user-images.githubusercontent.com/99131376/230174536-2fd3639f-ba7b-4d4b-b074-415ac795af2e.png)

Рис. 5 – Фрагмент екрану з рішення завдання "2.1.13 Виконати додаткове з’єднання з віддаленим терміналом ОС Linux, та
розташувати на екрані псевдотермінали поряд одним з одним."

![зображення](https://user-images.githubusercontent.com/99131376/230174900-56f8dd29-7a48-474b-b861-bb23a6a9a004.png)

Рис. 6 – Фрагмент екрану з рішення завдання "2.1.14 Отримати на екран список активних псевдотерміналів лише вашого
користувача"

![зображення](https://user-images.githubusercontent.com/99131376/230175042-396e429d-2f36-4f0e-ac9f-b6886b46f6e2.png)

Рис. 7 – Фрагмент екрану з рішення завдання "2.1.15 Виконати команду передачі повідомлення на один із ваших
псевдотерміналів, вказавшу рядок з вашим прізвищем та ім’ям, після чого завершити роботу
з командою внесення."

![зображення](https://user-images.githubusercontent.com/99131376/230175267-fd1363f9-3300-4016-a445-bf54d4dc5c4b.png)

Рис. 8 – Фрагмент екрану з рішення завдання "2.1.16 В одному з псевдотерміналів виконати команду блокування повідомлень та
повторити попереднє завдання."

![зображення](https://user-images.githubusercontent.com/99131376/230175541-116e0061-2839-44ff-8296-d4f98bc81126.png)

Рис. 9 – Фрагмент екрану з рішення завдання "2.1.17 Запустити на локальному комп’ютері ще один термінал Git Bash, перейти до Git-репозиторію із файлами WebAR-застосунку лабораторної роботи No2 та скопіювати 5-ть
файлів на віддалений Linux-сервер до каталогу «Laboratory-work-5» Git-репозиторія,
враховуючи наступні типи по одному файлу:
- текстовий файл, наприклад README.md;
- текстовий html-файл, наприклад, index.html;
- бінарний pdf-файл з вашим WebAR-буклетом;
- будь-який бінарний файл-зображення;
- будь-який бінарний аудіо-файл."

![зображення](https://user-images.githubusercontent.com/99131376/230175778-7d9e8968-4d38-45a8-aefd-153849e59927.png)

Рис. 10 – Фрагмент екрану з рішення завдання "2.1.18 Вимкнути режим безпарольного SSH-з’єднання з віддаленим сервером"
### 2 Аналіз типів файлів
![зображення](https://user-images.githubusercontent.com/99131376/230176333-04e36d0d-bb0a-4aad-ad0b-e3267dfc77ed.png)

Рис. 11 – Фрагмент екрану з рішення завдання "2.2.1 Для кожного з вказаних файлів виконайте команду визначення їх типів."

![зображення](https://user-images.githubusercontent.com/99131376/230176649-6bed6163-b578-4158-be63-64502fada746.png)

Рис. 12 – Фрагмент екрану з рішення завдання "2.2.2 Для кожного з вказаних файлів виконайте команду перегляду їх файлових дескрипторів."

![зображення](https://user-images.githubusercontent.com/99131376/230176692-290ab55a-0dd5-43fc-8c15-33da48bd3e77.png)

Рис. 13 – Фрагмент екрану з рішення завдання "2.2.3 Для html-файлу створити два жорсткі зв`язки з назвами
транслітація_вашого_прізвища + hard_link_1, транслітація_вашого_прізвища + hard_link_2,
наприклад, Blazhko_hard_link_1 та Blazhko_hard_link_2"

![зображення](https://user-images.githubusercontent.com/99131376/230176846-3c9e6e93-a46b-4310-aef3-2e6111be640d.png)

Рис. 14 – Фрагмент екрану з рішення завдання "2.2.4 Для html-файлу створити файл символічного зв`язку з назвою
транслітація_вашого_прізвища + sym_link_1, наприклад, Blazhko_sym_link_1"

![зображення](https://user-images.githubusercontent.com/99131376/230177228-cf848d87-f6b5-4445-93d2-3aac15658a4f.png)

Рис. 15 – Фрагмент екрану з рішення завдання "2.2.5 Вивести на екран у псевдо табличному форматі дані про створені файли-
зв`язки, в якому серед стовпчиків буде стовпчик зі значеннями inode та стовпчик зі значеннями кількості зв’язків."

### 3 Керування правами доступу до файлів
![зображення](https://user-images.githubusercontent.com/99131376/230177533-8bf33d4d-c469-42db-9a9f-afa0f5b9548f.png)

Рис. 16 – Фрагмент екрану з рішення завдання "2.3.1 Переглянути права доступу до створених файлів жорсткого та символічного
зв`язків."

![зображення](https://user-images.githubusercontent.com/99131376/230177578-a59dfa25-0066-491b-aa11-ba9a598f3e15.png)

Рис. 17 – Фрагмент екрану з рішення завдання "2.3.2 Надати символьні права доступу до файлу з назвою
транслітація_вашого_прізвища + hard_link_1:
- варіант взяти з колонки «Права доступу 1» таблиці 5;
- у таблиці вказано лише права, які необхідно встановити, та не вказано права, які
необхідно зняти;
- тип файлу не повинен протирічити визначеним правам."

![зображення](https://user-images.githubusercontent.com/99131376/230177928-42107ef9-2dd2-4af5-8b27-d0e0113e4dea.png)

Рис. 18 – Фрагмент екрану з рішення завдання "2.3.3 Перевірити обмеження прав доступу до файлу з попереднього пункту завдання, виконавши відповідні команди роботи з файлом, наприклад, якщо заборонено читання, тоді
виконати команду перегляд файлу, або, якщо зоборонено редагування, тоді виконати команду
редагування файлу."

![зображення](https://user-images.githubusercontent.com/99131376/230177987-3c7145ef-7552-4823-b830-c79d4d1a663e.png)

Рис. 19 – Фрагмент екрану з рішення завдання "2.3.4 Надати числові десяткові права доступу до файлу з назвою
транслітація_вашого_прізвища + hard_link_2:
- варіант взяти з колонки «Права доступу 2» таблиці 5;
- у таблиці вказано лише права, які необхідно встановити, та не вказано права, які
необхідно зняти;
- тип файлу не повинен протирічити визначеним правам."

![зображення](https://user-images.githubusercontent.com/99131376/230178194-034dd2dc-1b2f-4786-a75c-da98ee7ec934.png)

Рис. 20 – Фрагмент екрану з рішення завдання "2.3.5 Перевірити обмеження прав доступу до файлу з попереднього пункту завдання,
виконавши відповідні команди роботи з файлом, наприклад, якщо заборонено читання, тоді
виконати команду перегляд файлу, або, якщо зоборонено редагування, тоді виконати команду
редагування файлу."

![зображення](https://user-images.githubusercontent.com/99131376/230178312-6d208946-bab8-4f86-b718-d38becb2ebaf.png)

Рис. 21 – Фрагмент екрану з рішення завдання "2.3.6 Повторити попереднє завдання але вже для файлу символічного зв’язку,
перевіривши можливість такої зміни, після чого проаналізувати, що сталося з правами для
файлу-зв’язку та файлу, на який цей зв’язок посилається."

![зображення](https://user-images.githubusercontent.com/99131376/230178456-a8e206dc-fc7c-4075-b3ed-012ed3f07b11.png)

Рис. 22 – Фрагмент екрану з рішення завдання "2.3.7 Створити новий каталог з назвою «Dark Directory» та скопіювати до каталогу один текстовий файл."

![зображення](https://user-images.githubusercontent.com/99131376/230178585-5f708d22-b8dc-4662-b775-111d6e59207d.png)

Рис. 23 – Фрагмент екрану з рішення завдання "2.3.8 Перетворити каталог «Dark Directory» на «темний» каталог, виконавши відповідні команди зміни прав доступу до цього каталогу."

![зображення](https://user-images.githubusercontent.com/99131376/230178711-4874df9d-580d-438a-b051-4231e742d3fb.png)

Рис. 24 – Фрагмент екрану з рішення завдання "2.3.9 Отримати на екран список файлів «темного» каталогу. Для «темного» каталогу ця операція повинна завершитися помилкою.."

![зображення](https://user-images.githubusercontent.com/99131376/230178816-e6358e72-9a31-4ad0-bb89-be4de304d1ad.png)

Рис. 25 – Фрагмент екрану з рішення завдання "2.3.10 Отримати на екран опис одного файлу темного каталогу за відомою вам
назвою цього файлу. Для «темного» каталогу ця операція має бути успішною."

![зображення](https://user-images.githubusercontent.com/99131376/230178934-724ef7c2-9a6a-42a4-965c-b659633ddc7f.png)

Рис. 26 – Фрагмент екрану з рішення завдання "2.3.11Скопіювати до «темного» каталогу ще один текстовий файл. Для «темного»
каталогу ця операція має бути успішною."














