import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double? _result;
  String _operation = '';

  void _calculate(String op) {
    final num1 = double.tryParse(_controller1.text);
    final num2 = double.tryParse(_controller2.text);

    if (num1 == null || num2 == null) {
      setState(() {
        _result = null;
        _operation = op;
      });
      return;
    }

    double res;
    switch (op) {
      case '+':
        res = num1 + num2;
        break;
      case '-':
        res = num1 - num2;
        break;
      case '×':
        res = num1 * num2;
        break;
      case '÷':
        if (num2 == 0) {
          setState(() {
            _result = double.nan;
            _operation = op;
          });
          return;
        }
        res = num1 / num2;
        break;
      default:
        res = 0;
    }
    setState(() {
      _result = res;
      _operation = op;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            // Input fields in a horizontal line
            Row(

              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Expanded(
                  child: TextField(
                    controller: _controller1,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'First Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 20), // Space between the two text fields
                Expanded(
                  child: TextField(
                    controller: _controller2,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: 'Second Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],


            ),
            const SizedBox(height: 24), // Space between input fields and buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('×'),
                  child: const Text('×'),
                ),
                ElevatedButton(
                  onPressed: () => _calculate('÷'),
                  child: const Text('÷'),
                ),
    
              ],
            ),
            const SizedBox(height: 32),
            Text(
              _result == null
                  ? 'Enter numbers and select operation'
                  : (_result!.isNaN
                      ? 'Error: Division by zero'
                      : 'Result: ${_result!.toString()}'),
              style: const TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 16),
            
            Text(
              "Clear the input fields and result",
              style: const TextStyle(fontSize: 16, color: Colors.grey),

            ),

            const SizedBox(height: 16),
            // Clear button
            FloatingActionButton(onPressed:() {
                  _controller1.clear();
                  _controller2.clear();
                  setState(() {
                    _result = null;
                    _operation = '';
                  });
                },
                  child: const Icon(Icons.clear),
                ),

            const SizedBox(height: 72),
            Text(
              "Made By @Priyanshu",
              style: const TextStyle(fontSize: 16, color: Colors.grey),

            ),

          ],
        ),
      ),
    );
  }
}
