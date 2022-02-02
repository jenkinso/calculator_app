import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
                child: _buildDisplayScreenRow(screenText: '0')
            ),
            _buildButtonRow1(),
            _buildButtonRow2(),
            _buildButtonRow3(),
            _buildButtonRow4(),
            _buildButtonRow5(),
          ],
        ),
      ),
    );
  }

  /// Returns the Row containing the calculator's display screen.
  Row _buildDisplayScreenRow({required String screenText}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            color: Colors.blue[100],
            child: Text(
              screenText,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
      ],
    );
  }

  /// Returns a calculator button as a Container with Text
  Container _buildButtonContainer(String buttonText, Color? buttonColour) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: buttonColour,
      child: Text(
        buttonText,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 40, color: Colors.white),
      ),
    );
  }

  /// Returns the 1st Row of calculator buttons
  Row _buildButtonRow1() {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: _buildButtonContainer('C', Colors.grey),
        ),
        Expanded(
            child: _buildButtonContainer('<-', Colors.grey[800]),
        ),
      ],
    );
  }

  /// Returns the 2nd Row of calculator buttons
  Row _buildButtonRow2() {
    return Row(
      children: [
        Expanded(
          child: _buildButtonContainer('7', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('8', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('9', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('/', Colors.blue),
        ),
      ],
    );
  }

  /// Returns the 3rd Row of calculator buttons
  Row _buildButtonRow3() {
    return Row(
      children: [
        Expanded(
          child: _buildButtonContainer('4', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('5', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('6', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('x', Colors.blue),
        ),
      ],
    );
  }

  /// Returns the 4th Row of calculator buttons
  Row _buildButtonRow4() {
    return Row(
      children: [
        Expanded(
          child: _buildButtonContainer('1', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('2', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('3', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('-', Colors.blue),
        ),
      ],
    );
  }

  /// Returns the 5th Row of calculator buttons
  Row _buildButtonRow5() {
    return Row(
      children: [
        Expanded(
          child: _buildButtonContainer('0', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('.', Colors.black),
        ),
        Expanded(
          child: _buildButtonContainer('=', Colors.blue),
        ),
        Expanded(
          child: _buildButtonContainer('+', Colors.blue),
        ),
      ],
    );
  }

}




