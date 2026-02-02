function cadastrar(){
    const usuario = document.getElementById('usuario').value
    const senha = document.getElementById('senha').value
    const confirmarSenha = document.getElementById('confirmarSenha').value

    if(usuario && senha === confirmarSenha){
        localStorage.setItem(usuario,senha)
        return alert(`Usuario ${usuario} cadastrado com sucesso!`)
    }
    else{
        return alert("Usuario e/ou  senha incorreta")
    }


}

function login(){
    const usuario = document.getElementById('usuario').value
    const senha = document.getElementById('senha').value

    let usuarioExistente = localStorage.getItem(usuario)

     if(usuario && senha === usuarioExistente){
        localStorage.setItem(usuario,senha)
        alert(`Usuario ${usuario} logado com sucesso!`)
        window.location.href= "pagina2.html"
    }
    else{
        return alert("Usuario e/ou  senha incorreta")
    }
}



