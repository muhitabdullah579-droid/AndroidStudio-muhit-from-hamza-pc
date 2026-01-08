import 'package:flutter/material.dart';

import 'BuildWidget/buildbutton.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double num1 = 0;
  double num2 = 0;
  String _input = "0";
  String _output = "0";
  String _oprt = "";

  void buttonFunc(String value) {
    setState(() {
      // CLEAR
      if (value == 'C') {
        _input = '';
        _output = '0';
        num1 = 0;
        num2 = 0;
        _oprt = '';
        return;
      }

      // OPERATOR
      if (['+', '-', '*', '/'].contains(value)) {
        if (_input.isEmpty) return;

        num1 = double.parse(_input);
        _oprt = value;
        _input = '';
        _output = num1.toString();
        return;
      }

      // EQUAL
      if (value == '=') {
        if (_input.isEmpty || _oprt.isEmpty) return;

        num2 = double.parse(_input);

        if (_oprt == '+') {
          _output = (num1 + num2).toString();
        } else if (_oprt == '-') {
          _output = (num1 - num2).toString();
        } else if (_oprt == '*') {
          _output = (num1 * num2).toString();
        } else if (_oprt == '/') {
          _output =
          num2 == 0 ? 'Cannot divide by 0' : (num1 / num2).toString();
        }

        _input = '';
        _oprt = '';
        return;
      }

      // NUMBER
      if (_input.isEmpty || _input == '0') {
        _input = value;
      } else {
        _input += value;
      }

      _output = _input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '$num1$_oprt$_input',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 20),
                  Text(
                    _output,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              BuildButton(text: '7', onClick: ()=>buttonFunc('7')),
              BuildButton(text: '8', onClick: ()=>buttonFunc('8')),
              BuildButton(text: '9', onClick: ()=>buttonFunc('9')),
              BuildButton(
                text: '/',
                color: Colors.orange,
                onClick: ()=>buttonFunc('/'),
              ),
            ],
          ),
          Row(
            children: [
              BuildButton(text: '4', onClick: ()=>buttonFunc('4')),
              BuildButton(text: '5', onClick: ()=>buttonFunc('5')),
              BuildButton(text: '6', onClick: ()=>buttonFunc('6')),
              BuildButton(
                text: '*',
                color: Colors.orange,
                onClick: ()=>buttonFunc('*'),
              ),
            ],
          ),
          Row(
            children: [
              BuildButton(text: '1', onClick: ()=>buttonFunc('1')),
              BuildButton(text: '2', onClick: ()=>buttonFunc('2')),
              BuildButton(text: '3', onClick: ()=>buttonFunc('3')),
              BuildButton(
                text: '-',
                color: Colors.orange,
                onClick: ()=>buttonFunc('-'),
              ),
            ],
          ),
          Row(
            children: [
              BuildButton(text: 'C', onClick: ()=>buttonFunc('C')),
              BuildButton(text: '0', onClick: ()=>buttonFunc('0')),
              BuildButton(text: '=', onClick: ()=>buttonFunc('=')),
              BuildButton(
                text: '+',
                color: Colors.orange,
                onClick: ()=>buttonFunc('+'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
