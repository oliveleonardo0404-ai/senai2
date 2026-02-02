<link rel="stylesheet" href="estilo2.css">
<form action="logar_con.php" method="POST">
    <div class="container flex centro-linha centro">
        <div class="faixa-1 "> <!-- parte 1-->
            <div class="caixa-1 flex borda">
                <div class="div1 flex centro-alinha">
                    <h1>Bem vindo</h1>
                </div>
                <div class="div4 flex arrumar coluna"><!--email-->
                    <label for="text" placeholder="email">Email</label>
                    <input type="text" name="email" class="input" id="usuario">


                </div>

                <div class="div5 flex arrumar coluna"><!--senha-->
                    <label for="text">Senha</label>
                    <input type="password" name="password" class="input" id="senha">

                </div>


                <div class="div2 flex arrumar">
                    <h2>Acesse sua conta</h2>
                </div>



                <div class="entrar flex">
                    <button class="botao" onclick="login()">Entrar</button>

                </div>




            </div>
        </div>
    </div>
</form>