-- 1. Відобразити прізвища та імена всіх працівників
SELECT last_name, first_name FROM workers;

-- 2. Відобразити назви товарів та вартість 10 їх одиниць з урахуванням знижки 50% на одну одиницю
SELECT name, price * 9 + (price * 0.5) AS total_cost FROM goods;

-- 3. Відобразити товари в алфавітному порядку їх назв
SELECT name FROM goods ORDER BY name;

-- 4. Відобразити працівників в алфавітному порядку категорій та у зворотному порядку номерів паспортів
SELECT last_name, first_name, qualification, passport_no
FROM workers
ORDER BY qualification ASC, passport_no DESC;
