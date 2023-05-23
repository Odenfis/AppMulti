import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const fontSizeVar28 = TextStyle(fontSize: 28);
    return  Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        backgroundColor: Colors.green.shade900,
        elevation: 12.5,
      ),      
      backgroundColor: Colors.greenAccent,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,        
          children: <Widget>[
            Text('Contador de números con clic', style: fontSizeVar28,),
            Text('60',style: fontSizeVar28,)            
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.upload),
          onPressed: (){
            print('Mensaje en consola');
          }
          ),
    );  
  }
}
