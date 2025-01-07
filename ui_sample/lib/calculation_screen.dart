import 'package:flutter/material.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({super.key});

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();

  String _result = "";
  String _process = "";

  void _calculate(String operation){
    double num1 = double.parse(_num1Controller.text );
    double num2 = double.parse(_num2Controller.text) ;
    

    if (num1 == null || num2 == null) {
      setState(() {
        _result = "Enter a valid number";
        _process = "";
      });
      return;
    }
    double result;
    String process;

    switch (operation) {
      case "+":
        result = num1 + num2;
        process = "$num1 + $num2 = $result";
        break;

      case "-":
        result = num1 - num2;
        process = "$num1 - $num2 = $result";
        break;

      case "*":
        result = num1 * num2;
        process = "$num1 * $num2 = $result";
        break;

      case "/":
        result = num1 / num2;
        process = "$num1 / $num2 = $result";
        break;
      default:
      result = 0;
      process = "Invalid";
    }

    setState(() {
      _result = result.toString();
      _process = process;
    });

  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calcutor"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(
                labelText: "Number"
              ),
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(
                labelText: "Number"
              ),
            ),

            SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: (){
                    _calculate("+");
                  }, 
                  child: Text("Add"),
                  ),

                  ElevatedButton(
                  onPressed: (){
                    _calculate("-");
                  }, 
                  child: Text("Subtract"),
                  ),
                  ElevatedButton(
                  onPressed: (){
                    _calculate("*");
                  }, 
                  child: Text("Multiply"),
                  ),
                  ElevatedButton(
                  onPressed: (){
                    _calculate("/");
                  }, 
                  child: Text("Divide"),
                  ),

                  
            ],
            ),
            SizedBox(height: 20,),
                  Text(
                    "Process: $_process",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Result: $_result",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
          ],
        ),
      ),
    );
  }
}