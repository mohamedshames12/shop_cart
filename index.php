<?php

    include "config/connection.php";

    if(isset($_POST["add_product"])){
        $id = create_unique_id();
        $name = $_POST["name"];
        $name = filter_var($name, FILTER_SANITIZE_STRING);
        $price = $_POST["price"];
        $price = filter_var($price, FILTER_SANITIZE_STRING);
        $stock = $_POST["stock"];
        $stock = filter_var($stock, FILTER_SANITIZE_STRING);

        $image = $_FILES["image"]['name'];
        $image = filter_var($image, FILTER_SANITIZE_STRING);
        $ext = pathinfo($image, PATHINFO_EXTENSION);
        $rename = create_unique_id().".".$ext;
        $image_size = $_FILES["image"]["size"];
        $image_tmp_name = $_FILES["image"]["tmp_name"];
        $image_folder = 'uploaded_files/'.$rename;

        if($image_size > 2000000){
            $warning_msg[] = "Image size is too large!";
        }else {
            $insert_product = $conn->prepare("INSERT INTO `products` (id, name, price, stock, image) VALUES(?,?,?,?,?)");
            $insert_product->execute([$id, $name, $price, $stock, $rename]);
            move_uploaded_file($image_tmp_name, $image_folder);
            $success_msg[] = "Product added successfully!";
        }
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <title>Add Product</title>
</head>
<body>
    
    <?php
        include "components/header.php"
    ?>

    <section class="add-product">
        <h1 class="heading">add products</h1>
        <form action="#" method="post" enctype="multipart/form-data">
            <h2>product details</h2>
            <p>product name<span>*</span></p>
            <input type="text" placeholder="enter product name" name="name" required maxlength="50" class="input">
            <p>product price<span>*</span></p>
            <input type="number" placeholder="enter product price" name="price" required maxlength="10" min="0" max="99999999" class="input">
            <p>total stock<span>*</span></p>
            <input type="number" placeholder="total products available" name="stock" required maxlength="10" min="0" max="9999999" class="input">
            <p>product image<span>*</span></p>
            <input type="file" accept="image/*" required class="input" name="image">
            <input type="submit" value="add product" class="btn" name="add_product">
        </form>
    </section>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script src="script/script.js"></script>

    <?php
         include "php/alerts.php";
    ?>
</body>
</html>