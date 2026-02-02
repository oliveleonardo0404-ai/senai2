<?php
session_start();

if (!isset($_SESSION['id'])) {

    
}
?>

<h2>Bem-vindo, <?php echo $_SESSION['nome']; ?>!</h2>
<a href="logout.php">Sair</a>
