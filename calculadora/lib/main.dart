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
            Text('Coluna 1'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Center(
                    child: Text('AC', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),

                Container(
                  child: Center(
                    child: Text('<X', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Center(
                    child: Text('7', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),

                Container(
                  child: Center(
                    child: Text('8', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),

                Container(
                  child: Center(
                    child: Text('9', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),

                Container(
                  child: Center(
                    child: Text('/', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Center(
                    child: Text('4', style: TextStyle(fontSize: 36),
                    ),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  ),

               Container(
                  child: Center(
                    child: Text('5', style: TextStyle(fontSize: 36),
                    ),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  ),

                Container(
                  child: Center(
                    child: Text('6', style: TextStyle(fontSize: 36),
                    ),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(33),
                  ),
                  ),

                Container(
                  child: Center(
                    child: Text('x', style: TextStyle(fontSize: 30)),
                  ),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 132, 0),
                    borderRadius: BorderRadius.circular(33),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('1', style: TextStyle(fontSize: 36)),
                Text('2', style: TextStyle(fontSize: 36)),
                Text('3', style: TextStyle(fontSize: 36)),
                Text('-', style: TextStyle(fontSize: 36)),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('0', style: TextStyle(fontSize: 36)),
                Text(',', style: TextStyle(fontSize: 36)),
                Text('=', style: TextStyle(fontSize: 36)),
                Text('+', style: TextStyle(fontSize: 36)),
              ],
            ),
            Text('Coluna 6'),
          ],
        ),
      ),
    );
  }
}
