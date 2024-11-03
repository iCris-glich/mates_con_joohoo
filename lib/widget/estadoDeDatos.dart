import 'package:flutter/material.dart';

class EstadoDeDatos extends ChangeNotifier {
  String _nombreDeUsuario = '';
  bool _esNino = false;

  String get nombreDeUsuario => _nombreDeUsuario;
  bool get esNino => _esNino;

  void actualizarDatos(String nombre, bool esNino) {
    _nombreDeUsuario = nombre;
    _esNino = esNino;
    notifyListeners();
  }
}
