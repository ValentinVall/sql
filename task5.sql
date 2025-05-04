-- Завдання 1: Список назв товарів через кому для кожного виробника
SELECT m.name AS manufacturer,
       GROUP_CONCAT(g.name, ', ') AS product_list
FROM goods g
JOIN manufacturers m ON g.manufacturer_code = m.code
GROUP BY m.code;

-- Завдання 2: Кількість товарів < 20 грн для кожного виробника
SELECT m.name AS manufacturer,
       COUNT(g.code) AS cheap_product_count
FROM goods g
JOIN manufacturers m ON g.manufacturer_code = m.code
WHERE g.price < 20
GROUP BY m.code;

-- Завдання 3: Середня ціна всіх товарів
SELECT AVG(price) AS average_price
FROM goods;

-- Завдання 4: Виробники, які виготовляють >1 товару < 20 грн
SELECT m.name AS manufacturer,
       COUNT(g.code) AS cheap_product_count
FROM goods g
JOIN manufacturers m ON g.manufacturer_code = m.code
WHERE g.price < 20
GROUP BY m.code
HAVING COUNT(g.code) > 1;

