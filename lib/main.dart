import 'package:flutter/material.dart';


void main() => (runApp(Calculator()));

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  void _buttoPressed(String text){
      print('Botão pressionado: $text');

  }
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
                      CalcButton(
                        text: 'C', 
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('1'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const CalcButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.all(24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
