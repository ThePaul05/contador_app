import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  TextStyle fontSize30 = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Contador'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Numero de clicks:',
            style: fontSize30,
          ),
          Text(
            '$contador',
            style: fontSize30,
          )
        ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              contador++;
              setState(() {});
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              (contador > 0) ? contador-- : 0;
              setState(() {});
            },
            child: const Text('-'),
          ),
          const SizedBox(width: 20),
          FloatingActionButton(
            onPressed: () {
              contador = 0;
              setState(() {});
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
