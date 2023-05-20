DROP TABLE IF EXISTS `phone_numbers`;
CREATE TABLE `phone_numbers`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `user_id` int(11) NOT NULL,
    `phone`   varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `phone_numbers` (`id`, `user_id`, `phone`)
VALUES (1, 1, '111-11-11'),
       (2, 2, '111-11-11'),
       (3, 2, '111-11-11'),
       (4, 3, '111-11-11'),
       (5, 4, '111-11-11'),
       (6, 5, '111-11-11'),
       (7, 5, '111-11-11'),
       (8, 6, '111-11-11'),
       (9, 6, '111-11-11');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `id`         int(11) NOT NULL AUTO_INCREMENT,
    `name`       varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
    `gender`     int(11) NOT NULL,
    `birth_date` date NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `gender`, `birth_date`)
VALUES (1, 'Вася', 1, '2003-01-01'),
       (2, 'Петя', 1, '1990-01-01'),
       (3, 'Маша', 2, '1990-01-01'),
       (4, 'Даша', 2, '2003-01-01'),
       (5, 'Ксюша', 2, '1990-01-01'),
       (6, 'Елизавета', 2, '2003-01-01');
