//counter.dart file

import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "State Man & Counter App",
        style: TextStyle(color: Colors.blueAccent),
      )),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
              onPressed: () {
                setState(() {
                  counter += 1;
                });
              },
              child: const Text("Counter ++")),
          Text("Counter value: $counter"),
          TextButton(
              onPressed: () {
                setState(() {
                  counter -= 1;
                });
              },
              child: const Text("Counter --")),
        ],
      )),
    );
  }
}
