import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Barra Superior'),
        elevation: 12.5,
      ),
      
      backgroundColor: Colors.grey,
      body: const Center(
        child: Text('Hola Mundo V2'),

        ),
    );
  
  }

}
