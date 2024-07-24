import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    int contador=0;
    TextStyle fontSize30= TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    return Scaffold(appBar: AppBar(
      title: const Text('Mi Contador'),
    ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Numero de clicks',style: fontSize30,),
            Text('$contador',style: fontSize30,)

        ],)
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () => {
        contador++
      },
      child: const Icon(Icons.add),
      )
    ); 
      


  }
}