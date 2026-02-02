function somar(){
    let Valor_1 = Number(document.getElementById('Valor_1').value)
    let Valor_2 = Number(document.getElementById('Valor_2').value)
    let soma = Valor_1 + Valor_2
    document.getElementById("resultado").innerHTML = "O resultado é " + soma;
    alert(soma)

}
function subtra(){
    let Valor_1 = Number(document.getElementById('Valor_1').value)
    let Valor_2 = Number(document.getElementById('Valor_2').value)
    let subtra = Valor_1 - Valor_2
    document.getElementById("resultado").innerHTML = "O resultado é " + subtra;
    alert(subtra)
}

function multi(){
    let Valor_1 = Number(document.getElementById('Valor_1').value)
    let Valor_2 = Number(document.getElementById('Valor_2').value)
    let multi1 = Valor_1 * Valor_2
    document.getElementById("resultado").innerHTML = "O resultado é " + multi1;
    alert(multi1)
}

function divi(){
    let Valor_1 = Number(document.getElementById('Valor_1').value)
    let Valor_2 = Number(document.getElementById('Valor_2').value)
   
    
    

    if(Valor_1 == 0 || Valor_2 == 0){
        
    }
    else{
     divi = Valor_1 / Valor_2
    }
    document.getElementById("resultado").innerHTML = "O resultado é " + divi;
    alert(divi)
}