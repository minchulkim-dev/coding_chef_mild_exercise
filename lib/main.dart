import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                print('text button');
              },
              onLongPress: () {
                print('long press');
              },
              style: TextButton.styleFrom(
                primary: Colors.red,
                // backgroundColor: Colors.blue,
              ),
              child: const Text(
                'Text Button',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('elevated button');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 0.0,
              ),
              child: const Text('elevated button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('outlined button');
              },
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: const BorderSide(
                    color: Colors.black87,
                    width: 2.0,
                  )),
              child: const Text('Outlined button'),
            ),
            TextButton.icon(
              onPressed: () {
                print('text button with icon');
              },
              icon: const Icon(
                Icons.home,
                size: 50.0,
                color: Colors.black87,
              ),
              label: Text('icon'),
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(
                Icons.home,
                size: 50.0,
                // color: Colors.black87,
              ),
              label: const Text('icon'),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onSurface: Colors.amber,
                // minimumSize: const Size(300, 100),
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('text button'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('elevated button'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SecondPage(),
            ),
          );
        },
        child: const Text('Go to the second page'),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: const Center(
        child: Text(
          '"좋아요가 추가되었습니다."',
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Third Page'),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '"좋아요를 취소하시겠습니까."',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.redAccent,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('좋아요가 취소되었습니다.'),
                        duration: Duration(seconds: 3),
                      ),
                    );
                  },
                  child: const Text('취소하기'),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
