import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/pantallas/ejercicios/PantallaSuma.dart';

class ClasesDeSuma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconoMenu(
        titulo: '',
      ),
      drawer: MiDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(35),
          child: Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color(0xFFfbb619),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Title(
                    color: Color(0xFFB99DFC),
                    child: const Text(
                      '¿Cómo multiplicar?',
                      style: TextStyle(
                        fontFamily: 'Anton',
                        color: Color.fromARGB(255, 101, 69, 174),
                      ),
                    )),
                const SizedBox(height: 10),
                Text(
                  '''Sumar es fácil y divertido. La suma es una operación matemática para juntar o combinar números y obtener un total.''',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/ejemplo-suma.png',
                  width: 450,
                  height: 450,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/ejemplodesuma.png',
                  width: 450,
                  height: 450,
                ),
                const Text(
                  '''Cómo sumar:
1. Coloca los sumandos uno debajo del otro, asegurando que las unidades estén en la misma columna.
2. Suma cada columna por separado, empezando por las unidades.
3. Escribe el resultado debajo de cada columna y de la línea de resultado.''',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Tooltip(
                  message: 'Iniciar prueba',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sumas()),
                      );
                    },
                    child: Text('Prueba'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
