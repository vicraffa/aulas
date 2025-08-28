// Função para gerenciar a exibição das abas
function showTab(tabName){
    const tabContents = document.querySelectorAll('.tab-content');
    tabContents.forEach(content => content.classList.remove('active-tab'));

    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => tab.classList.remove('active'));

    document.getElementById(`tab-${tabName}`).classList.add('active-tab');
    document.querySelector(`.tab[onclick="showTab('${tabName}')"]`).classList.add('active');
}

// Funções de conversão
function conversaoOctal() {
    var octal = document.getElementById('in_octal').value;

    if (/[^0-7]/.test(octal)) {
        alert('Só podem ser inserido valores de 0 a 7.');
        document.getElementById('in_octal').value = '';
        return;
    }

    
    var decimal = parseInt(octal, 8);
    var hexadecimal = decimal.toString(16).toUpperCase();
    var binario = decimal.toString(2);

    document.getElementById('mensagemConversaoOctalDecimal').innerHTML = `Decimal: ${decimal}`;
    document.getElementById('mensagemConversaoOctalHexadecimal').innerHTML = `Hexadecimal: ${hexadecimal}`;
    document.getElementById('mensagemConversaoOctalBinario').innerHTML = `Binário: ${binario}`;
}

function conversaoDecimal() {
    var decimal = Number(document.getElementById('in_decimal').value);

    if (/[^0-9]/.test(decimal)) {
        alert('Só podem ser inserido valores de 0 a 9.');
        document.getElementById('in_decimal').value = '';
        return;
    }

    var octal = decimal.toString(8);
    var hexadecimal = decimal.toString(16).toUpperCase();
    var binario = decimal.toString(2);

    document.getElementById('mensagemConversaoDecimalOctal').innerHTML = `Octal: ${octal}`;
    document.getElementById('mensagemConversaoDecimalHexadecimal').innerHTML = `Hexadecimal: ${hexadecimal}`;
    document.getElementById('mensagemConversaoDecimalBinario').innerHTML = `Binário: ${binario}`;
}

function conversaoBinaria() {
    var binario = document.getElementById('in_binario').value;

    if (/[^01]/.test(binario)) {
        alert('Só podem ser inserido valores de 0 e 1.');
        document.getElementById('in_binario').value = '';
        return;
    }

    var decimal = parseInt(binario, 2);
    var octal = decimal.toString(8);
    var hexadecimal = decimal.toString(16).toUpperCase();
    var decimalStr = decimal.toString(10);

    document.getElementById('mensagemConversaoBinarioOctal').innerHTML = `Octal: ${octal}`;
    document.getElementById('mensagemConversaoBinarioHexadecimal').innerHTML = `Hexadecimal: ${hexadecimal}`;
    document.getElementById('mensagemConversaoBinarioDecimal').innerHTML = `Decimal: ${decimalStr}`;
}

function conversaoHexadecimal() {
    var hexadecimal = document.getElementById('in_hexadecimal').value;
    var decimal = parseInt(hexadecimal, 16);

    if (/[^0-9a-fA-F]/.test(hexadecimal)) {
        alert('Só pode ser inserido valores de 0 a 9 e A a F.');
        document.getElementById('in_hexadecimal').value = '';
        return;
    }

    var octal = decimal.toString(8);
    var binario = decimal.toString(2);
    var decimalStr = decimal.toString(10);

    document.getElementById('mensagemConversaoHexadecimalOctal').innerHTML = `Octal: ${octal}`;
    document.getElementById('mensagemConversaoHexadecimalBinario').innerHTML = `Binário: ${binario}`;
    document.getElementById('mensagemConversaoHexadecimalDecimal').innerHTML = `Decimal: ${decimalStr}`;
}
