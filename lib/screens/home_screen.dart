import 'package:flutter/material.dart';
import 'package:inherited_practice/inheriteds/counter_inherited.dart';
import 'package:inherited_practice/providers/counter_provider.dart';
import 'package:inherited_practice/screens/page1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _navigate(BuildContext context, Widget child) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => child),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Para instanciar el Provider
    final CounterProvider _counterProvider =
        CounterInherited.of(context)!.counterProvider;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Inherited Practice"),
        actions: [
          IconButton(
              onPressed: () {
                _navigate(context, const Page1());
              },
              icon: const Icon(Icons.looks_one_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: _counterProvider,
              builder: (context, _) {
                return Text(
                  CounterInherited.of(context)!
                      .counterProvider
                      .counter
                      .toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
            ElevatedButton(
              onPressed: () {
                // la variable con parentesis(), ya que es una funcion
                CounterInherited.of(context)?.counterProvider.increment();
              },
              child: const Text("sumar"),
            ),
          ],
        ),
      ),
    );
  }
}
