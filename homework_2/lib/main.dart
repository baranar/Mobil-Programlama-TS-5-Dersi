import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChangerScreen(),
    );
  }
}

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  // beginning color: Yellow
  Color _backgroundColor = Colors.yellow;

  // function for change color
  void _changeColor() {
    setState(() {
      if (_backgroundColor == Colors.yellow) {
        _backgroundColor = Colors.blueAccent;
      } else {
        _backgroundColor = Colors.yellow;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      body: Center(
        child: ElevatedButton(
          onPressed: _changeColor,
          child: Text(
            'Change color',
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
