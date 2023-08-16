<?php
    $ServerName = "db";
    $UserNamedb = "php_docker";
    $Password = "password";
    $dbName = "php_docker";

    $conn = mysqli_connect($ServerName, $UserNamedb, $Password, $dbName);

    if(!$conn){
        die("Connection fail: ".mysqli_connect_error());
    }