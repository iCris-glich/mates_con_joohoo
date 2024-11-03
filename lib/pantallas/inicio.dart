import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appdemateparaninos/widget/estadoDeDatos.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({super.key});

  @override
  _EstadoInicio createState() => _EstadoInicio();
}

class _EstadoInicio extends State<PantallaInicio> {
  final TextEditingController _controller = TextEditingController();
  String _nombreUsuario = '';
  bool check1 = false;
  bool check2 = false;

  void _handleCheckbox1(bool? value) {
    setState(() {
      check1 = value!;
      check2 = !value;
    });
  }

  void _handleCheckbox2(bool? value) {
    setState(() {
      check2 = value!;
      check1 = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Mátematicas con Joo-Hoo',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Image.asset(
                  'assets/images/mascota-math-hoo.png',
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 8),
                Text(
                  '¡Solo ingresa un nombre por favor!',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                SizedBox(height: 8),
                TextField(
                  controller: _controller,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    labelText: 'Introduce tu nombre',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (text) {
                    setState(() {
                      _nombreUsuario = text;
                    });
                  },
                ),
                SizedBox(height: 20),
                Text(
                  '¡Hola! $_nombreUsuario',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Text(
                  '¿Dime eres niño o niña?',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: check1,
                          onChanged: _handleCheckbox1,
                        ),
                        Text(
                          'Niña',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Image.asset(
                          'assets/images/avatar-niña.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: check2,
                          onChanged: _handleCheckbox2,
                        ),
                        Text(
                          'Niño',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Image.asset(
                          'assets/images/avatar-niño.png',
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_nombreUsuario.isNotEmpty) {
                      Provider.of<EstadoDeDatos>(context, listen: false)
                          .actualizarDatos(_nombreUsuario, check2);
                      Navigator.pushNamed(context, '/bienvenida');
                    }
                  },
                  child: Text('Comenzar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
