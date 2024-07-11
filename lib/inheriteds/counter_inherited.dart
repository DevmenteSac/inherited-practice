import 'package:flutter/material.dart';
import 'package:inherited_practice/providers/counter_provider.dart';

class CounterInherited extends InheritedWidget {
  const CounterInherited({
    super.key,
    required this.child,
    required this.counterProvider,
  }) : super(child: child);

  final Widget child;

  final CounterProvider counterProvider;

  static CounterInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterInherited>();
  }

  @override
  bool updateShouldNotify(CounterInherited oldWidget) {
    return true;
  }
}
