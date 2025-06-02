class CalcLogic {
  String numero = '0';
  String operacao = '';
  double primeiroNum = 0.0;
  bool limpar = false;

  void calcular(String tecla) {
    switch (tecla) {
      case '0':
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      case '7':
      case '8':
      case '9':
      case ',':
        {
          numero += tecla;

          numero = numero.replaceAll(',', '.');

          if (numero.contains('.')) {
            //double numeroDouble = double.parse(numero);
            //numero = numeroDouble.toString();
          } else {
            int numeroInt = int.parse(numero);
            numero = numeroInt.toString();
          }

          numero = numero.replaceAll('.', ',');
        }
        ;
        break;

      case '+':
      case '-':
      case 'x':
      case '/':
        if (numero == '0' && operacao.isEmpty) {
          primeiroNum = 0; // aqui tu força 0 como primeiro número
        } else {
          primeiroNum = double.parse(numero.replaceAll(',', '.'));
        }
        operacao = tecla;
        numero = numero.replaceAll(',', '.');
        primeiroNum = double.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';
        break;

      case '=':
        double resultado = 0.0;

        if (operacao == '/' && double.parse(numero) == 0) {
          numero = 'ERRO';
          operacao = '';
          primeiroNum = 0;
          return;
        }

        if (operacao == '+') {
          resultado = primeiroNum + double.parse(numero);
        }

        if (operacao == '-') {
          resultado = primeiroNum - double.parse(numero);
        }

        if (operacao == 'x') {
          resultado = primeiroNum * double.parse(numero);
        }

        if (operacao == '/') {
          resultado = primeiroNum / double.parse(numero);
        }

        {
          numero = resultado.toString();
          numero = numero.replaceAll(',', '.');
        }
        ;
        break;

      case 'AC':
        {
          numero = '0';
        }
        ;
        ;
        break;

      case 'assets/image/backspace.png':
        {
          if (numero.length > 0) {
            numero = numero.substring(0, numero.length - 1);
          }
        }
        ;

        break;

      default:
        numero += tecla;
        break;
    }
  }
}
