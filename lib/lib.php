<?php
    session_start();

    $host = 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'online_shop';

    $mysqli = mysqli_connect($host, $user, $pass, $db) or die('Tidak dapat terkoneksi');