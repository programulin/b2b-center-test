<?php

/**
 * Класс для получения соединения с БД в любом участке кода
 */

class Connection
{
    protected static mysqli $connection;

    public static function getConnection(): mysqli
    {
        if (!self::$connection) {
            // В идеале выносим реквизиты доступа в .env
            self::$connection = new mysqli('localhost', 'login', 'password', 'database');
        }

        return self::$connection;
    }
}
