import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Bar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              color: Colors.blue,
              child: const Text('container 1'),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 100,
              color: Colors.pink,
              child: const Text('container 2'),
            ),
            Container(
              height: 100,
              color: Colors.yellow,
              child: const Text('container 3'),
            ),
          ],
        ),
      ),
    );
  }
}
