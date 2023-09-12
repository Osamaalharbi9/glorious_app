import 'package:flutter/material.dart';

class ViewItemPage extends StatelessWidget {
  const ViewItemPage({super.key});
  final String title='';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromARGB(255, 245, 245, 245),
            Color.fromARGB(255, 205, 205, 205),
          ])),child:Column(children: [
            Text('')
          ],) ,
    );
  }
}
