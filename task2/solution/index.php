<?php

/*
 * Насколько я понял из задачи, нужно минимально отрефакторить код, не думая про ООП, фреймворки и т.п.
 * Поэтому в плане рефакторинга сделал (как мне кажется) необходимый разумный минимум.
 */

require __DIR__ . '/connection.php';
require __DIR__ . '/functions.php';

// Прилетели какие-то данные
$_GET['user_ids'] = '1,3,5';

// Валидируем
if (!preg_match('/^\d+(,\d+)*$/', $_GET['user_ids'])) {
    // Каким-то образом отображаем ошибку
    die('Ошибка');
}

// Приводим данные к нужному типу
$ids = array_map(
    fn($id) => (int)$id,
    explode(',', $_GET['user_ids'])
);

// Получаем имена
$names = get_users_names_by_ids($ids);

// Выводим
foreach ($names as $user_id => $name): ?>
    <a href="/show_user.php?id=<?= e($user_id) ?>">
        <?= e($name) ?>
    </a>
<?php
endforeach;
