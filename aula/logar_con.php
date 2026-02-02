<?php
session_start();
require "connect.php";

if ($_POST) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM usuario WHERE email = '$email' LIMIT 1";
    $res = mysqli_query($conn, $sql);

    if (mysqli_num_rows($res) > 0) {
        $user = mysqli_fetch_assoc($res);

        if ($password == $user['password']) {
            $_SESSION['id'] = $user['id'];
            $_SESSION['nome'] = $user['nome'];
            header("Location: carlinhos.php");
            exit;
        } else {
            $erro = "Senha incorreta!";
        }
    } else {
        $erro = "Usuário não encontrado!";
    }
}
?>