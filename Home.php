<?php
session_start();

if (isset($_SESSION['user_name'])) {

    ?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <header>
            <div class="wrapper">
                <ul class="nav-area">
                    <li><a href="Home.php">Home</a></li>
                    <li><a href="players.html">Players</a></li>
                    <li><a href="matches.html">Matches</a></li>
                    <li><a href="index.php">Logout</a></li>
                </ul>
            </div>
            <br><br><br><br>
            <div class="welcome-text">
                <marquee behavior="" direction="left">
                    <p>Welcome to the Home page</p>
                </marquee>
            </div>
        </header>

    </body>

    </html>

    <?php

}

else {
    header("Location: index.php");
    exit();
}

