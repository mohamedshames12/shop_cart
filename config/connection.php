<?php

    $db_name = "mysql:local=localhost;dbname=shop_db";
    $db_user_name = "root";
    $db_user_pass = "";

    $conn =  new PDO($db_name, $db_user_name, $db_user_pass);

    function create_unique_id () {
        $created_id = "slkvndioFIHGDU56ILHDV5678";
        $created_length = strlen($created_id);
        $random_str = "";

        for($i = 0; $i < 20 ; $i++) {
            $random_str .= $created_id[mt_rand(0, $created_length - 1)];
        }

        return $random_str;
    }

    if(isset($_COOKIE['user_id'])){
        $user_id = $_COOKIE['user_id'];
    }else{
        setcookie('user_id', create_unique_id(), time() + 60*60*24*30);
    }
?>