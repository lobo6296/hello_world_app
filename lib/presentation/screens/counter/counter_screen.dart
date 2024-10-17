import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Counter Screen")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            // Text('Click${clickCounter == 1 ? '' : 's'}', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100))
            if (clickCounter == 1)
              Text('Click',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
            if (clickCounter != 1)
              Text('Clicks',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          clickCounter += 1;
          setState(() {});
          // setState(() {
          //   clickCounter += 1;
          // });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
