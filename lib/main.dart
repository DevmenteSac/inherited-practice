import 'package:flutter/material.dart';
import 'package:inherited_practice/inheriteds/counter_inherited.dart';
import 'package:inherited_practice/providers/counter_provider.dart';
import 'package:inherited_practice/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider();
    return CounterInherited(
      counterProvider: counterProvider,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        theme: ThemeData(primarySwatch: Colors.purple),
        home: const HomeScreen(),
      ),
    );
  }
}
