<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilo2.css ">
</head>

<body>
    <form action="local.php" method="POST" onsubmit="return validarform()">
        <div class="container flex centro-linha centro">
            <div class="faixa-1 "> <!-- parte 1-->
                <div class="caixa-1 flex centro-alinha">
                  
                    <div class="div-1">
                    <?php
include('connection.php'); 

$sql = "SELECT * FROM livros";
$result = $conn->query($sql);

?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <title>Listagem de Livros</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 30px auto;
            color: black;
        }
        table, th, td {
            border: 1px solid #444;
            
        }
        th {
            background: #eee;
            padding: 10px;
            font-weight: bold;
         
            
        }
        td {
            padding: 8px;
            text-align: center;
            
            
        }
        h1 {    
            text-align: center;
            color: #2C73D2;
        }
       
        
    </style>
</head>

<body>

<h1>Listagem de Livros</h1>

<?php
if ($result && $result->num_rows > 0) {
    echo "<table>";
    echo "<tr>
            <th>ID</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Ano</th>
            <th>Categoria</th>
            <th>Quantidade</th>
          </tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr>";
        echo "<td>" . $row['id'] . "</td>";
        echo "<td>" . $row['titulo'] . "</td>";
        echo "<td>" . $row['autor'] . "</td>";
        echo "<td>" . $row['ano'] . "</td>";
        echo "<td>" . $row['categoria'] . "</td>";
        echo "<td>" . $row['quantidade'] . "</td>";
        echo "</tr>";
    }

    echo "</table>";
} else {
    echo "<p style='text-align:center;'>Nenhum livro encontrado.</p>";
}

$conn->close();
?>

</body>
</html>
                    </div>

                </div>
            </div>

        </div>






    </form>

</body>

</html>