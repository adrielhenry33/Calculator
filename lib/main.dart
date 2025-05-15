import 'package:flutter/material.dart';

void main() => (runApp(Calculator()));

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Text(
            'Calculadora',
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),

        body: Column(
          children: [
            Container(
              color: Colors.white,
              margin: EdgeInsets.all(15.0),
              width: 400.0,
              height: 120.0,
              padding: EdgeInsetsDirectional.all(20.0),
              child: Center(
                child: Text(
                  'Visor',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 50.0),
                ),
              ),
            ),
            
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                           
                        ),
                        onPressed: () {}, 
                        child: Text('C')
                      ),
                    ],
                  ), 
                  Row(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  final String text;
  final String color;
  final VoidCallback onPressed;
  
  const CalcButton({super.key});

 
  

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}