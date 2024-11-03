import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/pantallas/ejercicios/PantallaResta.dart';

class ClaseResta extends StatelessWidget {
  const ClaseResta({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.all(16.0),
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
              children: <Widget>[
                Title(
                    color: Color(0xFFB99DFC),
                    child: const Text(
                      '¿Cómo restar?',
                      style: TextStyle(
                        fontFamily: 'Anton',
                        color: Color.fromARGB(255, 101, 69, 174),
                      ),
                    )),
                const SizedBox(height: 20),
                Text(
                  'La Resta',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/Images/Resta.jpg'),
                const SizedBox(height: 20),
                Text(
                  'La resta o sustracción es una operación matemática que consiste en sacar, quitar, reducir o separar algo de un todo. Restar es una de las operaciones básicas de las matemáticas junto a la suma, que es su proceso inverso. De una forma más sencilla podríamos decir que cuando restamos estamos eliminando o quitando una cantidad de un conjunto de objetos.',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Tooltip(
                  message: 'Ir a Resta en Línea',
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RestaLinea()),
                      );
                    },
                    child: const Text('Ir a Resta en Línea'),
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

class RestaLinea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resta en Línea'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Resta en Linea',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.asset('assets/Images/niiñosresta.jpg'),
            const SizedBox(height: 20),
            Text(
              'Es empleada cuando se van a extraer cantidades pequeñas al minuendo, conforme se obtenga experiencia va aumentar la facilidad de este método para números más grandes. Tener en consideración que al iniciar en el mundo de las matemáticas una operación 4-2 puede ser confuso',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Tooltip(
              message: 'Iniciar prueba',
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Restas()),
                  );
                },
                child: const Text('Prueba'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
