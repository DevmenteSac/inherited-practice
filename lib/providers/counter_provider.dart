import 'package:flutter/material.dart';

// Clase Provider
class CounterProvider extends ChangeNotifier {
  // Atributo privado por guion bajo _
  int _counter = 0;

  // Metodo para ver, leer, observar el estado (getter)
  // Se usa con <watch>
  int get counter => _counter;

  // Metodo para cambiar el estado (setter)
  // Se usa con <read>
  void increment() {
    _counter++;
    notifyListeners();
  }
}
