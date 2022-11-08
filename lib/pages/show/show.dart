import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<StatefulWidget> createState() => ShowState();
}

class ShowState extends State<Show> {
  num info = 0;

  func() {
    setState(() {
      info++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$info"),
          ElevatedButton(onPressed: func, child: const Text("Child Add"))
        ],
      ),
    ));
  }
}
