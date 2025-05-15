import 'package:flutter/material.dart';
import 'logger.dart';
import 'Components/button.dart';
void main() => (runApp(Calculator()));

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  void _buttonPressed(String text) {
    Logger.info('Botão pressionado: $text');
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
            
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CalcButton(
                        text: 'C', 
                        color: Colors.black, 
                        textColor: Colors.blue,
                        onPressed: () => _buttonPressed('1'),
                      ),
                      CalcButton(
                        text: 'DEL', 
                        textColor: Colors.blue,
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('DEL'),
                      ),

                      CalcButton(
                        text: '%', 
                        color: Colors.black, 
                        textColor: Colors.blue,
                        onPressed: () => _buttonPressed('%'),
                      ),

                      CalcButton(
                        text: '/', 
                        color: Colors.black, 
                        textColor: Colors.blue,
                        onPressed: () => _buttonPressed('/'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CalcButton(
                        text: '7', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('7'),
                      ),
                      CalcButton(
                        text: '8', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('8'),
                      ),

                      CalcButton(
                        text: '9', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('9'),
                      ),

                      CalcButton(
                        text: '*', 
                        textColor: Colors.blue,
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('*'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CalcButton(
                        text: '4', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('4'),
                      ),
                      CalcButton(
                        text: '8', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('5'),
                      ),

                      CalcButton(
                        text: '9', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('6'),
                      ),

                      CalcButton(
                        text: '*', 
                        textColor: Colors.blue,
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('+'),
                      ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CalcButton(
                        text: '1', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('1'),
                      ),
                      CalcButton(
                        text: '2', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('2'),
                      ),

                      CalcButton(
                        text: '3', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('3'),
                      ),

                      CalcButton(
                        text: '-', 
                        textColor: Colors.blue,
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('-'),
                      ),
                    ],
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CalcButton(
                        text: '0', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('4'),
                      ),
                      CalcButton(
                        text: '.', 
                        color: Colors.black, 
                        textColor: Colors.white,
                        onPressed: () => _buttonPressed('.'),
                      ),

                      CalcButton(
                        text: '=', 
                        textColor: Colors.blue,
                        color: Colors.black, 
                        onPressed: () => _buttonPressed('='),
                      ),
                    ],
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
