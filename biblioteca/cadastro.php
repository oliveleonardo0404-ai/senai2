<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilo.css ">
</head>

<body>
    <form action="local.php" method="POST" onsubmit="return validarform()">
        <div class="container flex centro-linha centro">
            <div class="faixa-1 "> <!-- parte 1-->
                <div class="caixa-1 flex centro-alinha">
                    <div>
                        <h1 class="titulo">Cadastro de livros</h1>

                    </div>
                    <div class="div-1">
                        <label class="cor">Titulo:
                            <input type="text" name="titulo">
                        </label>
                        <label class="cor">Autor:
                            <input type="text" name="autor">
                        </label>
                        <label class="cor">Ano:
                            <input type="number" name="ano">
                        </label class>
                        <label class="cor">Quantidade:
                            <input type="number" name="quantidade">
                        </label>
                        <label class="cor">Categoria:
                            <select name="categoria" id="" class="select">
                                <option value="Selecione uma opção">Selecione uma opção</option>
                                <option value="Drama">Drama</option>
                                <option value="Terro">Terro</option>
                                <option value="Ação">Ação</option>
                                <option value="Romances">Romances</option>
                                <option value="Crônica">Crônica </option>
                                <option value="Aventura">Aventura</option>
                            </select>
                        </label>
                    <input type="submit">
                        
                      
                    <a href="listar.php" class="cor">Clique para ver a lista de livros</a>

                    </div>

                </div>
            </div>

        </div>






    </form>

</body>

</html>