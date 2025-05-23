import 'package:calculadora/domain/logic/calc_logic.dart';
import 'package:calculadora/widgets/buttons_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CalcLogic _calculator = CalcLogic();

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
                    Text(_calculator.numero, style: TextStyle(fontSize: 72)),
                  ],
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum(
                  '',
                  text: 'AC',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('AC');
                    });
                  },
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
                        setState(() {
                          _calculator.calcular('assets/image/backspace.png');
                        });
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
                ButtomCustomNum(
                  '',
                  text: '7',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('7');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '8',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('8');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '9',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('9');
                    });
                  },
                ),

                ButtonCustomOP(
                  '',
                  text: '/',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('/');
                    });
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum(
                  '',
                  text: '4',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('4');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '5',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('5');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '6',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('6');
                    });
                  },
                ),

                ButtonCustomOP(
                  '',
                  text: 'x',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('x');
                    });
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum(
                  '',
                  text: '1',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('1');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '2',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('2');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '3',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('3');
                    });
                  },
                ),

                ButtonCustomOP(
                  '',
                  text: '-',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('-');
                    });
                  },
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomCustomNum(
                  '',
                  text: '0',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('0');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: ',',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular(',');
                    });
                  },
                ),

                ButtomCustomNum(
                  '',
                  text: '=',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('=');
                    });
                  },
                ),

                ButtonCustomOP(
                  '',
                  text: '+',
                  onPressed: (String) {
                    setState(() {
                      _calculator.calcular('+');
                    });
                  },
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
