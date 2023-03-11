-- Создание таблицы employees и заполнение ее данными
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    speciality VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (id, name, age, speciality, salary)
VALUES (1, 'Иван', 30, 'Менеджер', 50000.00),
       (2, 'Петр', 35, 'Рабочий', 30000.00),
       (3, 'Анна', 28, 'Менеджер', 60000.00),
       (4, 'Елена', 42, 'Рабочий', 25000.00),
       (5, 'Дмитрий', 31, 'Менеджер', 55000.00),
       (6, 'Алексей', 25, 'Рабочий', 28000.00),
       (7, 'Ольга', 38, 'Менеджер', 65000.00),
       (8, 'Сергей', 45, 'Рабочий', 32000.00),
       (9, 'Мария', 29, 'Менеджер', 58000.00),
       (10, 'Андрей', 32, 'Рабочий', 29000.00);

-- Отсортировать поле “зарплата” (salary) в порядке убывания и возрастания
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY salary ASC;

-- Вывести 5 максимальных зарплат (salary)
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

-- Подсчитать суммарную зарплату(salary) по каждой специальности(speciality)
SELECT speciality, SUM(salary) as total_salary
FROM employees
GROUP BY speciality;

-- Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет.
SELECT COUNT(*) as count_workers
FROM employees
WHERE speciality = 'Рабочий' AND age BETWEEN 24 AND 42;

-- Найти количество специальностей
SELECT COUNT(DISTINCT speciality) as count_specialities
FROM employees;

-- Вывести специальности, у которых средний возраст сотрудника меньше 44 лет
SELECT speciality, AVG(age) as avg_age
FROM employees
GROUP BY speciality
HAVING AVG(age) < 44;
