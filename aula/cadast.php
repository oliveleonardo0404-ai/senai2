<?php

include("connect.php");

$email = $_POST['email'];
$senha = $_POST['senha'];
$confirm_password = $_POST['confirmaSenha'];

echo $email , $senha , $confirm_password;

$sql = "INSERT INTO usuario (email,password) VALUE ('$email','$senha')";

if($conn->query($sql) === true){
     echo "usuario cadrastrado com sucesso";
     header("location: login2.php");
}
else{
    echo "erro:" .$sql. "<br>" . $conn->error;
}

$conn->close();
