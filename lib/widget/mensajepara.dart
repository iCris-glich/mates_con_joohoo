import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdemateparaninos/widget/estadoDeDatos.dart';

class MensajeEmergente {
  static void ver(BuildContext context) {
    final nombreUsuario =
        Provider.of<EstadoDeDatos>(context, listen: false).nombreDeUsuario;
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(Duration(seconds: 10), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(
            title: Text('¡Hola! $nombreUsuario'),
            icon: Image.asset('assets/images/mascota-math-hoo.png'),
            content: const Text('''Soy Joo-Hoo un Búho muuuy inteligente HOO-HOO
¡Vamos a aprender mucho el día de hoy HOO-HOO!'''),
          );
        });
  }
}
