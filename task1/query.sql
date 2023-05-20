/*
Какие изменения внесены в таблицы:
1. У телефона убран NULL, поскольку нет смысла в записи с пустым телефоном.
2. Формат birth_date заменён на DATE.

Что ещё можно сделать:
1. Изменить тип gender с INT на TINYINT и заменить 0 на NULL.
2. Добавить связи через внешние ключи для поддержания целостности данных (удалили юзера - удалились все его телефоны).
*/

SELECT `users`.`name`, COUNT(`phone`) as 'count'
FROM `users`
INNER JOIN `phone_numbers` ON `users`.`id` = `phone_numbers`.`user_id`
WHERE `users`.`gender` = 2
AND YEAR (CURDATE()) - YEAR (`users`.`birth_date`) BETWEEN 18 AND 22
GROUP BY `users`.`id`
