import 'dart:math';

class LogicaOperaciones {
  final Random _random = Random();
  List<Map<String, dynamic>> _operaciones = [];
  int repuestasCorrectas = 0;

  List<Map<String, dynamic>> get operaciones => _operaciones;

  void generarOperacionesAleatoriasSumas(int cantidad) {
    _operaciones = [];
    repuestasCorrectas = 0;

    for (int i = 0; i < cantidad; i++) {
      final num1 = _random.nextInt(10);
      final num2 = _random.nextInt(10);
      final resultado = num1 + num2;
      _operaciones.add({
        'num1': num1,
        'num2': num2,
        'resultado': resultado,
        'verificado': false,
        'mensaje': '',
      });
    }
  }

  void generarOperacionesAleatoriasResta(int cantidad) {
    _operaciones = [];
    repuestasCorrectas = 0;

    for (int i = 0; i < cantidad; i++) {
      final num1 = _random.nextInt(10);
      final num2 = _random.nextInt(10);
      final resultado = num1 - num2;
      _operaciones.add({
        'num1': num1,
        'num2': num2,
        'resultado': resultado,
        'verificado': false,
        'mensaje': '',
      });
    }
  }

  void generarOperacionesAleatoriasMulti(int cantidad) {
    _operaciones = [];
    repuestasCorrectas = 0;

    for (int i = 0; i < cantidad; i++) {
      final num1 = _random.nextInt(10);
      final num2 = _random.nextInt(10);
      final resultado = num1 * num2;
      _operaciones.add({
        'num1': num1,
        'num2': num2,
        'resultado': resultado,
        'verificado': false,
        'mensaje': '',
      });
    }
  }

  void generarOperacionesAleatoriasDivision(int cantidad) {
    _operaciones = [];
    repuestasCorrectas = 0;

    for (int i = 0; i < cantidad; i++) {
      var num1 = _random.nextInt(6) + 1;
      final num2 = _random.nextInt(6) + 1;
      if (num1 / num2 != 0) {
        num1 += num2 - (num1 % num2);
      }
      final resultado = num1 ~/ num2;
      _operaciones.add({
        'num1': num1,
        'num2': num2,
        'resultado': resultado,
        'verificado': false,
        'mensaje': '',
      });
    }
  }

  void verificarRespuestas(List<int> respuestas) {
    repuestasCorrectas = 0;

    for (int i = 0; i < _operaciones.length; i++) {
      final respuesta = respuestas[i];
      final resultado = _operaciones[i]['resultado'];
      if (respuesta == resultado) {
        _operaciones[i]['mensaje'] = '¡Correcto! La respuesta es $resultado';
        repuestasCorrectas++;
      } else {
        _operaciones[i]['mensaje'] =
            'Incorrecto. La respuesta correcta es $resultado.';
      }
      _operaciones[i]['verificado'] = true;
    }
  }

  bool todasRespuestasCorrectas() {
    return repuestasCorrectas == _operaciones.length;
  }
}
