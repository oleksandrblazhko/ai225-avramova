## Основи контейнерної віртуалізації програмного забезпечення

### 1 Встановлення програми контейнерної віртуалізації Docker

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/bed7a3d5-fc8e-41ff-b123-ec20ef92e138)

Рис. 1 Фрагмент рішення екрану "2.1.1 На вашому локальному комп’ютері встановити програмне забезпечення Docker
під будь-яку host-ОС (Windows, Linux, MacOS)."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/fe01d8ec-32af-4717-94e8-0c2c267a0cd3)

Рис. 2 Фрагмент рішення екрану "2.1.2 Перевірити успішність встановлення Docker через запуск контейнера на основі
тестового образу hello-world."

### 2 Керування контейнерною віртуалізацією ОС Linux через інтерфейс командного рядку

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b4471b61-942b-4311-b4bd-c2746bcd5ade)

Рис. 3 Фрагмент рішення екрану "2.2.1 Через командний рядок виконати пошук контейнернего образу ОС Linux."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/c84462d5-8525-4493-9936-9644c98407fb)

Рис. 4 Фрагмент рішення екрану "2.2.2 Отримати перелік версій ОС Ubuntu."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b3432005-12a3-43ab-a885-e75fa97ffa04)

Рис. 5 Фрагмент рішення екрану "2.2.3 Завантажити образ контейнера ОС Ubuntu версії 14.04."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/dfafb1e2-76dd-4db1-91b1-286a55ff458a)

Рис. 6 Фрагмент рішення екрану "2.2.4 Запустити контейнер з образом ОС Ubuntu версії 14.04, який має назву «ubuntu-
for-surname», де surname – ваше прізвище транслітерацією, наприклад «ubuntu-for-blazhko»,
для подальшої взамодії з користовучем через команду bash."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/0a9bb6a5-9a63-409e-a994-ea903dae8d2a)

Рис. 7 Фрагмент рішення екрану "2.2.5 Після отримання доступу до терміналу ОС переглянути опис дистрибутиву ОС."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/1d01daa1-a798-4d53-9fd9-a60c7d4a2847)

Рис. 8 Фрагмент рішення екрану "2.2.6 В другому псевдотерміналі host-ОС виконати команду отримання списку
запущених контейнерів."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/7aa8a169-9bbc-49d0-98b5-0764ad31b3de)

Рис. 9 Фрагмент рішення екрану "2.2.7 В першому псевдотерміналі завершити роботу із контейнером."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/710aefa7-3169-4022-968f-541ac03a6fda)

Рис. 10 Фрагмент рішення екрану "2.2.8 В другому псевдотерміналі host-ОС виконати команду отримання списку
створених контейнерів."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/1c4d4e58-05b7-4a2c-9d84-92d05db36638)

Рис. 11 Фрагмент рішення екрану "2.2.9 Видалити створений контейнер."

### 3 Керування файловою віртуалізацією ОС Linux через команду chroot

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/f7665a3e-46a1-4918-9413-1e5a034dc857)

Рис. 12 Фрагмент рішення екрану "2.3.1 Створити каталог за шаблоном /tmp/surname_root, де surname – ваше прізвище
транслітерацією, наприклад, /tmp/blazhko_root"

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/25ec05f2-5b21-49de-b7b4-51b15275f591)

Рис. 13 Фрагмент рішення екран "2.3.2 Розмістити у створеному каталозі програму bash та всі необхідні файли
динамічних бібліотек."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/32afe07a-eb11-46ee-bc02-9216c7108a19)

Рис. 14 Фрагмент рішення екрану "2.3.3 Змінити розташування root-каталогу на створений каталог."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/bfbe7d52-51b0-4002-91c9-a47c5aadc71f)

Рис. 15 Фрагмент рішення екрану "2.3.4 Спробувати змінити каталог на каталог поточного користувача."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/18dab81d-42be-40ce-847d-b1da27ee73ba)

Рис. 16 Фрагмент рішення екрану "2.3.5 Отримати назву поточного каталогу."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/df1643d5-8976-4f86-923b-4243197b70c3)

Рис. 17 Фрагмент рішення екрану "2.3.6 Змінити значення змінної HOME на назву поточного каталогу."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/664b93c8-1ff1-4d3f-96b9-cde2a8299827)

Рис. 18 Фрагмент рішення екрану "2.3.7 Змінити каталог на каталог поточного користувача."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/b8a413a9-bb3a-493f-a699-34bdf3368220)

Рис. 19 Фрагмент рішення екрану "2.3.8 Спробувати виконати команду отримання переліку файлів каталогу."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/a52b0efc-a50b-48a6-982f-dc8b6f7b0e4f)

Рис. 20 Фрагмент рішення екрану "2.3.9 Повернутися до старого root-каталогу."

### 4 Керування контейнерною віртуалізацією СКБД PostgreSQL через інтерфейс командного рядку

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/4d98bec9-2de0-4bc4-add3-713c10f50bbf)

Рис. 21 Фрагмент рішення екрану "2.4.1 Завантажити образ контейнера postgres останньої стабільної версії."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/20c125c8-81d5-4606-8368-702d2cb0e1e9)

Рис. 22 Фрагмент рішення екрану "2.4.2. Запустити образ postgres зі створенням контейнеру з назвою за шаблоном
«surname-postgres», де surname – ваше прізвище транслітерацією, паролем адміністратора
5432 та подальшою роботою сервера СКБД PostgreSQL у фоновому режимі"

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/ae0d6425-bb4e-47a9-a4da-18f1058cd010)

Рис. 23 Фрагмент рішення екрану "2.4.3 Виконати в контейнері surname-postgres команду bash, щоб розпочати роботу із
оболонкою командного рядку."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/03bee909-c10e-4bdc-8aa4-3c2c504962be)

Рис. 24 Фрагмент рішення екрану "2.4.4 В оболонці командного рядку створити БД із назвою за шаблоном «surname_db»"

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/6d52f163-7e23-4a74-b53b-80fec54307c1)

Рис. 25 Фрагмент рішення екрану "2.4.5 В оболонці командного рядку створити користувача СКБД PostgreSQL за
шаблоном «surname»."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/8bed6527-d6ab-4c73-ad66-ed6d1a570a09)

Рис. 26 Фрагмент рішення екрану "2.4.6 В оболонці командного рядку встановити з’єднання зі створеною БД від імені
створеного користувача."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/adfe1bb4-a39f-4df0-a7c0-8f2575d387f0)

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/f39e02f2-4443-48bb-963e-95cde1a96b57)

Рис. 27 Фрагмент рішення екрану "2.4.7 Завершити роботу з командою psql та завершити роботу з контейнером."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/c3e8de07-e2b6-41ae-ae08-3a867e4d5757)

Рис. 28 Фрагмент рішення екрану "2.4.8 Виконати команду отримання списку запущених контейнерів."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/05ee3342-394a-40da-bfca-efbdd1f0afa6)

Рис. 29 Фрагмент рішення екрану "2.4.9 Зупинити роботу контейнера surname-postgres."

![зображення](https://github.com/oleksandrblazhko/ai225-avramova/assets/99131376/1ad7a388-964d-47f2-8851-7b11f92d867e)

Рис. 30 Фрагмент рішення екрану "2.4.10 Видалити контейнер surname-postgres."
