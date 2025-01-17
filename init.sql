CREATE TABLE test_table (
        name VARCHAR(10),
        surname VARCHAR,
        city VARCHAR,
        age INTEGER,
        CHECK (LENGTH(name) > 3 AND LENGTH(name) <= 10 AND age > 0 AND age <= 150)
        );

INSERT INTO test_table(name, surname, city, age) VALUES
('Иван', 'Иванов', 'Москва', 30),
('Михаил', 'Дмитриев', 'Волгоград', 17),
('Олег', 'Долгих', 'Вологда', 25),
('Валентина', 'Федорова', 'Москва', 41),
('Татьяна', 'Феофанова', 'Липецк', 90),
('Сергей', 'Найдёнов', 'Елец', 10),
('Иван', 'Дрёмов', 'Белгород', 67),
('Мария', 'Липецких', 'Белгород', 32),
('Ярослав', 'Безродный', 'Брянск', 43),
('Олег', 'Парфенов', 'Липецк', 76),
('Серафим', 'Лабузов', 'Москва', 19),
('Павел', 'Скогорев', 'Белгород', 14),
('Глеб', 'Юртаев', 'Волгоград', 18),
('Злата', 'Ковгар', 'Курск', 18),
('Лиза', 'Петрова', 'Курск', 19),
('Пётр', 'Иванов', 'Ярославль', 28),
('Дмитрий', 'Чернов', 'Хабаровск', 54),
('Сергей', 'Зуев', 'Челябинск', 55),
('Олег', 'Устинов', 'Лиски', 37),
('Егор', 'Петров', 'Россошь', 25);