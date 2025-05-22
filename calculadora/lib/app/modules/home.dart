
import 'package:calculadora/widgets/buttons_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String numero = '0';
  String operacao = '';
  double primeiroNum = 0.0;

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
        setState(() {
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
        });
        break;

     
      case '+':
      case '-':
      case 'x':
      case '/':
        operacao = tecla;
        numero = numero.replaceAll(',', '.');
        primeiroNum = double.parse(numero);
        numero = numero.replaceAll('.', ',');
        numero = '0';
        break;

      case '=':
        double resultado = 0.0;

        if (operacao == '/'){
          if (double.parse(numero) * 1 == 0) {
            print('ERRO: divisão por zero');
            return;
          }
        }

        if (operacao == '+'){
            resultado =  primeiroNum + double.parse(numero);
        }

        if (operacao == '-'){
          resultado = primeiroNum - double.parse(numero);
        }

         if (operacao == 'x'){
          resultado = primeiroNum * double.parse(numero);
        }

         if (operacao == '/'){
          resultado = primeiroNum / double.parse(numero);
        }


        setState(() {
          numero = resultado.toString();
          numero = numero.replaceAll(',', '.');
        });
        break;

      case 'AC':
        setState(() {
          numero = '0';
        });
        break;

      case 'assets/image/backspace.png':

      setState(() {
        if (numero.length > 0) {
          numero = numero.substring(0, numero.length -1);
        } 
      });
        
        break;

      default:
        numero += tecla;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora')),
          backgroundColor: const Color.fromARGB(255, 252, 141, 30),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
  Container(
    width: double.infinity,
    height: 100,
    decoration: BoxDecoration(
      color: const Color(0xF6F6F6F6),
      border: Border.all(color: Colors.black, width: 4),
    ),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(numero, style: TextStyle(fontSize: 72)),
        ],
      ),
    ),
  ),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [

      ButtomCustomNum('', text: 'AC', onPressed: (String) {calcular('AC');}),

      Container(
        width: 75,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              calcular('assets/image/backspace.png');
            },
            child: Image.asset('assets/image/backspace.png'),
          ),
        ),
      ),
    ],
  ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum('', text: '7', onPressed: (String) {calcular('7');}),

                ButtomCustomNum('', text: '8', onPressed: (String) {calcular('8');}),

                ButtomCustomNum('', text: '9', onPressed: (String) {calcular('9');}),

                ButtonCustomOP( '', text: '/', onPressed: (String ) { calcular('/');  }),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum('', text: '4', onPressed: (String) {calcular('4');}),

                ButtomCustomNum('', text: '5', onPressed: (String) {calcular('5');}),

                ButtomCustomNum('', text: '6', onPressed: (String) {calcular('6');}),

                ButtonCustomOP( '', text: 'x', onPressed: (String ) { calcular('x');  }),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum('', text: '1', onPressed: (String) {calcular('1');}),

                ButtomCustomNum('', text: '2', onPressed: (String) {calcular('2');}),

                ButtomCustomNum('', text: '3', onPressed: (String) {calcular('3');}),

                ButtonCustomOP( '', text: '-', onPressed: (String ) { calcular('-');  }),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum('', text: '0', onPressed: (String) {calcular('0');}),

                ButtomCustomNum('', text: ',', onPressed: (String) {calcular(',');}),

                ButtomCustomNum('', text: '=', onPressed: (String) {calcular('=');}),

                ButtonCustomOP( '', text: '+', onPressed: (String ) { calcular('+');  }),
              ],
            ),
            Text('Criado por Matheus Nunes'),
          ],
        ),
      ),
      );
  }
}

