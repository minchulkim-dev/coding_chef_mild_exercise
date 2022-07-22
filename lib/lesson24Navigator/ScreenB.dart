import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ScreenB'),
        ),
        body: const Center(
            child: Text(
          'ScreenB',
          style: TextStyle(fontSize: 24.0),
        )));
  }
}
