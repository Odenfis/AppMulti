import 'package:flutter/material.dart';
class ContadorScreen extends StatefulWidget{
  const ContadorScreen({super.key});
  @override
  State<ContadorScreen> createState() => _ContadorScreenState();
}
class _ContadorScreenState extends State<ContadorScreen> {
  
  int contador = 60;

  //Crear funciones
  void incrementar(){
    contador++;
    setState(() {});
  }

  void setzero(){
    contador=0;
    setState(() {});
  }

  void decrementar(){
    contador--;
    setState(() {});
  }


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

        floatingActionButton: CustomFloatingActions(
          incrementarFN: incrementar,
          setzeroFN: setzero,
          decrementarFN: decrementar,
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,          
    );  
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function incrementarFN;
  final Function setzeroFN;
  final Function decrementarFN;


  const CustomFloatingActions({
    super.key, required this.incrementarFN, required this.setzeroFN, required this.decrementarFN,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.green.shade800,
          child: const Icon(Icons.publish_sharp),
          onPressed: () => incrementarFN(),
          ),
     
          FloatingActionButton(
            backgroundColor: Colors.green.shade800,
          child: const Icon(Icons.exposure_zero_outlined),
          onPressed:() => setzeroFN(),
          ),
         
          FloatingActionButton(
            backgroundColor: Colors.green.shade800,
          child: const Icon(Icons.upload),
          onPressed:() => decrementarFN(),
          )
      ],
    );
  }
}
