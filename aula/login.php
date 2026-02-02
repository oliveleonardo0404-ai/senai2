<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="estilo.css">

</head>

<body>
<form action="cadast.php" method="POST" onsubmit="return validarform()">
    <div class="container flex centro-linha centro">
            <div class="faixa-1 "> <!-- parte 1-->
                <div class="caixa-1 flex borda">
                    <div class="div1 flex centro-alinha">
                        <h1>Bem vindo</h1>
                    </div>

                    <div class="div2 flex arrumar">
                        <h2>Acesse sua conta</h2>
                    </div>



                    <div class="entrar flex">
                        <button class="botao" onclick="login()">Entrar</button>

                    </div>




                </div>
                </div>
                

      

            <div class="faixa-2"> <!-- parte 2-->
                <div class="caixa-2 flex borda">

                    <div class="div3 flex">
                        <h1>Crie sua conta</h1>


                    </div>

                    <div class="div4 flex arrumar coluna"><!--email-->
                        <label for="text" placeholder="email">Email</label>
                        <input type="text" name="email" class="input" id="usuario">


                    </div>

                    <div class="div5 flex arrumar coluna"><!--senha-->
                        <label for="text">Senha</label>
                        <input type="text" name="senha" class="input" id="senha">

                    </div>
                    <div class="div6 flex arrumar coluna"><!--SENHA-->
                        <label for="text">Confirmar senha</label>
                        <input type="text" name="confirmaSenha" class="input" id="confirmarSenha">


                    </div>
                    <div class="cadastrar flex">
                        <button class="botao" onclick="cadastrar()">cadastrar</button>



                    </div>







                </div>

            </div>
            </div>
            </div>
        </form>
    </div>
    </div>



    <script src="script.js"></script>
</body>


</html>