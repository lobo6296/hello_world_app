import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Counter Functions")),
          actions: [
            IconButton(
                icon: const Icon(Icons.refresh_rounded),
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                }),
          ],
          // leading: IconButton(
          //   icon: const Icon(Icons.refresh_rounded),
          //   onPressed: () {},
          // ),
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
                const Text('Click',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
              if (clickCounter != 1)
                const Text('Clicks',
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w100)),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter += 1;
                setState(() {});
                // setState(() {
                //   clickCounter += 1;
                // });
              },
              child: const Icon(Icons.plus_one),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              shape: const StadiumBorder(),
              onPressed: () {
                clickCounter--;
                setState(() {});
                // setState(() {
                //   clickCounter += 1;
                // });
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
            ),
          ],
        ));
  }
}