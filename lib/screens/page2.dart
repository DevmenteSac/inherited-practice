import 'package:flutter/material.dart';
import 'package:inherited_practice/inheriteds/counter_inherited.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    final int _counter = CounterInherited.of(context)!.counterProvider.counter;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Inherited Practice Pagina 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Aqui veo el estado
              _counter.toString(),
              style: const TextStyle(fontSize: 200),
            ),
          ],
        ),
      ),
    );
  }
}
