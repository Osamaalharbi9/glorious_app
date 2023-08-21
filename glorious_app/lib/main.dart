import 'package:flutter/material.dart';

void main() => runApp(const Myapp());

//statelesswidget
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 245, 245, 245),
                Color.fromARGB(255, 205, 205, 205)
              ])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset('assets/images/Comp 10 2.png'),
            ),Text('data')
            ],
          ),
        ),
      ),
    );
  }
}
