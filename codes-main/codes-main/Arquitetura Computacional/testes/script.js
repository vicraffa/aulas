function converter() {
    // Acessar os elementos do formulário
    var inputNumber = document.getElementById('inputNumber').value;
    var fromBase = parseInt(document.getElementById('fromBase').value);
    var toBase = parseInt(document.getElementById('toBase').value);

    // Converter o número para decimal
    var decimalNumber = parseInt(inputNumber, fromBase);

    // Verificar se a conversão foi válida
    if (isNaN(decimalNumber)) {
        document.getElementById('resultado').innerHTML = 'Número inválido na base de origem.';
        return;
    }

    // Converter o número decimal para a base de destino
    var resultado = decimalNumber.toString(toBase);
    document.getElementById('resultado').innerHTML = 'Resultado: ' + resultado.toUpperCase();
}