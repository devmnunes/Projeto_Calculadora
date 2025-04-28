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
  int calculo = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Calculadora')),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
      
            Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 247, 245, 245),
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Center(
                child: Text('Coluna 1'),
                ),
              ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('AC', style: TextStyle(fontSize: 30)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: Center(
                    child: Image.asset('assets/image/backspace.png'),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('7', style: TextStyle(fontSize: 30)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('8', style: TextStyle(fontSize: 30)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('9', style: TextStyle(fontSize: 30)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('/', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('4', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('5', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('6', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('x', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('1', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('2', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('3', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('-', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('0', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text(',', style: TextStyle(fontSize: 36)),
                  ),
                ),

                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('=', style: TextStyle(fontSize: 36)),
                  ),
                ),


                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                  child: Center(
                    child: Text('+', style: TextStyle(fontSize: 30)),
                  ),
                ),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
