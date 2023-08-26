<?php
session_start();
include "db_connect.php";

if(isset($_POST['uname']) && isset($_POST['password'])) {
    function validate($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
    }
}

$uname = validate($_POST['uname']);
$pass = validate($_POST['password']);

$sql = "SELECT * FROM login";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($result);

if($row['user_name'] === $uname && $row['password'] === $pass) {
    $_SESSION['user_name'] = $row['user_name'];
    header("Location: home.php");
    exit();
}
