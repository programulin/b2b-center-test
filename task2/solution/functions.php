<?php

/**
 * Получение имён пользователей по их идентификаторам.
 * Возвращается массив вида [id => name].
 *
 * @param int[] $ids
 * @return string[]
 */
function get_users_names_by_ids(array $ids): array
{
    // Валидация
    foreach($ids as $id) {
        if(!is_integer($id)) {
            throw new Exception('ID должен быть целым числом.');
        }
    }

    $query = 'SELECT `id`, `name` FROM `users` WHERE `id` IN (' . implode(',', $ids) . ')';
    $result = Connection::getConnection()->query($query);
    $users = [];

    while ($user = $result->fetch_object()) {
        $users[$user->id] = $user->name;
    }

    return $users;
}

function e(string $str): string
{
    return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}
