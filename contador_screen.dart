import 'package:flutter/material.dart';
class ContadorScreen extends StatefulWidget{
  const ContadorScreen({super.key});
  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}
class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 60;
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,        
          children: <Widget>[
            const Text('Contador de números con clic', style: fontSizeVar28,),
            Text('$contador',style: fontSizeVar28,)            
          ],
        )
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.upload),
          onPressed: (){
            contador++;
            setState(() {});
            //print('Mensaje en consola ------>>>> $contador');
          }
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,          
    );  
  }
}
