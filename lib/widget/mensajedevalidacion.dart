import 'package:flutter/material.dart';
import 'package:appdemateparaninos/pantallas/bienvenida.dart';

class DialogoConfirmacion {
  static void mostrar(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text('''¡Felicidades has aprobado HOO-HOO!
¿Quieres aprender otro tema o prefieres quedarte?'''),
          icon: Image.asset('assets/images/mascota-math-hoo.png'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Quedarme'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PantallaBienvenida()),
                );
              },
              child: Text('Ver más temas'),
            ),
          ],
        );
      },
    );
  }
}
