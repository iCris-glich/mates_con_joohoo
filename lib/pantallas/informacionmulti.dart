import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/pantallas/ejercicios/PantallaMulti.dart';

class ClasesDeMultiplicar extends StatelessWidget {
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
                  '''Ahora aprenderemos cómo multiplicar. Las multiplicaciones son operaciones matemáticas para calcular el resultado de sumar un número tantas veces como indique el otro número que compone la operación.''',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkDDOc7Dkg3Lvr06cSdopJjOH7FRNQQQdbbQ&s',
                ),
                const SizedBox(height: 10),
                Text(
                  'Pasos para multiplicar:',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/ejemplo-multi.png',
                ),
                const SizedBox(height: 10),
                Text(
                  '''1. Multiplica el multiplicador (número de abajo) por cada cifra del multiplicando (número de arriba), de derecha a izquierda.
2. Escribe las unidades del producto debajo de la raya, en vertical con las unidades del multiplicando.
3. Escribe las decenas del producto debajo de las decenas del multiplicando.
4. Continúa multiplicando y escribiendo el resultado hasta completar todas las cifras.
5. El resultado es la combinación de unidades, decenas, centenas, etc., obtenidas en cada paso.''',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Tooltip(
                  message: 'Iniciar prueba',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Multi()),
                      );
                    },
                    child: const Text('Prueba'),
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
