function calcular() {
    var n1 = Number(document.getElementById("n1").value);
    var n2 = Number(document.getElementById("n2").value);
    var soma = n1 + n2;
    document.getElementById("resultado").innerText = "Resultado: " + soma;
  }