import 'package:flutter/material.dart';
import 'package:appdemateparaninos/widget/drawer.dart';
import 'package:appdemateparaninos/widget/menucustom.dart';
import 'package:appdemateparaninos/widget/cargarejercicio.dart';
import 'package:appdemateparaninos/widget/mensajedevalidacion.dart';
// Asegúrate de importar la clase LogicaOperaciones

class Multi extends StatefulWidget {
  @override
  _MultiState createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  final LogicaOperaciones _logicaOperaciones = LogicaOperaciones();
  List<TextEditingController> _respuestasController = [];

  @override
  void initState() {
    super.initState();
    _generarOperacionesAleatorias();
  }

  void _generarOperacionesAleatorias() {
    _logicaOperaciones.generarOperacionesAleatoriasMulti(5);
    _respuestasController =
        List.generate(5, (index) => TextEditingController());
    setState(() {});
  }

  void _verificarTodasRespuestas() {
    final respuestas = _respuestasController.map((controller) {
      return int.tryParse(controller.text) ?? 0;
    }).toList();

    _logicaOperaciones.verificarRespuestas(respuestas);
    setState(() {});

    if (_logicaOperaciones.todasRespuestasCorrectas()) {
      DialogoConfirmacion.mostrar(context);
    }
  }

  @override
  void dispose() {
    for (var controller in _respuestasController) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const IconoMenu(
        titulo: '',
      ),
      drawer: MiDrawer(),
      body: SafeArea(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Operaciones de Multiplicación',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: _logicaOperaciones.operaciones.length,
                  itemBuilder: (context, index) {
                    final operacion = _logicaOperaciones.operaciones[index];
                    return Card(
                      elevation: 2,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              '¿Cuánto es ${operacion['num1']} x ${operacion['num2']}?',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            SizedBox(height: 8),
                            TextField(
                              controller: _respuestasController[index],
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Tu respuesta',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              operacion['verificado']
                                  ? operacion['mensaje']
                                  : '',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Tooltip(
                message: 'Comprobar resultados',
                child: ElevatedButton(
                  onPressed: _verificarTodasRespuestas,
                  child: Text('Comprobar resultados'),
                ),
              ),
              SizedBox(height: 10),
              Tooltip(
                message: 'Nuevos ejercicios',
                child: ElevatedButton(
                  onPressed: _generarOperacionesAleatorias,
                  child: Text('Nuevos ejercicios'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
