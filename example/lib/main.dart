import 'package:flutter/material.dart';

import 'package:simple_debouncer/simple_debouncer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple Debouncer Example')),
        body: DebouncerExample(),
      ),
    );
  }
}

class DebouncerExample extends StatefulWidget {
  @override
  _DebouncerExampleState createState() => _DebouncerExampleState();
}

class _DebouncerExampleState extends State<DebouncerExample> {
  final Debouncer _debouncer = Debouncer(milliseconds: 500);
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            onChanged: (value) {
              _debouncer.run(() {
                setState(() {
                  _text = value;
                });
              });
            },
          ),
          SizedBox(height: 20),
          Text('Debounced Text: $_text'),
        ],
      ),
    );
  }
}
