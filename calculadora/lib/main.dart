import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
                color: const Color.fromARGB(255, 247, 245, 245),
                border: Border.all(color: Colors.black, width: 4),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text(numero, style: TextStyle(fontSize: 72))],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 75,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('AC');
                      },
                      child: Text('AC', style: TextStyle(fontSize: 45)),
                    ),
                  ),
                ),

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
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('7');
                      },
                      child: Text('7', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('8');
                      },
                      child: Text('8', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('9');
                      },
                      child: Text('9', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('/');
                      },
                      child: Text('/', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('4');
                      },
                      child: Text('4', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('5');
                      },
                      child: Text('5', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('6');
                      },
                      child: Text('6', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('x');
                      },
                      child: Text('x', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('1');
                      },
                      child: Text('1', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('2');
                      },
                      child: Text('2', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('3');
                      },
                      child: Text('3', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('-');
                      },
                      child: Text('-', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('0');
                      },
                      child: Text('0', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(48),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular(',');
                      },
                      child: Text(',', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('=');
                      },
                      child: Text('=', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),

                Container(
                 width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        calcular('+');
                      },
                      child: Text('+', style: TextStyle(fontSize: 48)),
                    ),
                  ),
                ),
              ],
            ),
            Text('Criado por Matheus Nunes'),
          ],
        ),
      ),
    );
  }
}

