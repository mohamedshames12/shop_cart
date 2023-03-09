<header class="header">
    <div class="flex">
        <a href="index.php" class="logo"><i class="fas fa-sharp fa-regular fa-shop"></i>shop</a>

        <nav class="navber">
            <a href="index.php"><i class="fas fa-plus"></i></a>
            <a href="pages/view_products.php"><i class="fas fa-eye"></i></a>
            <?php
                $count_total_cart_items = $conn->prepare("SELECT * FROM `cart` WHERE user_id = ?");
                $count_total_cart_items->execute([$user_id]);
                $total_cart_items = $count_total_cart_items->rowCount();
            ?>
            <a href="#" class="cart-icon"><i class="fas fa-shopping-cart"></i>
            <span>(<?= $total_cart_items;?>)</span></a>
        </nav>
    </div>
</header>