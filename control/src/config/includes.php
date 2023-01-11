<?php
session_start();

// Lay out class
class Layout
{
    public static function APILayout()
    {
        include 'connection.php';
        include '../../src/query/query.php';
    }

    public static function BaseLayout()
    {
        include 'connection.php';
        include '../../src/query/query.php';
        include '../../src/files/cdn.php';
    }
}

?>
