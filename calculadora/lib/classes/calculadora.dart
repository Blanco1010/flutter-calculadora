class Calculadora {
  String cadena = '';
  String operacion = '';
  String operacion2 = '';
  bool control = false;
  String controlCalcular = '';

  void sumar() {
    if (operacion.length != 0) {
      control = true;
      controlCalcular = 'Sumar';
    }
  }

  void restar() {
    if (operacion.length != 0) {
      control = true;
      controlCalcular = 'Restar';
    }
  }

  void multiplicar() {
    if (operacion.length != 0) {
      control = true;
      controlCalcular = 'Multiplicar';
    }
  }

  void dividir() {
    if (operacion.length != 0) {
      control = true;
      controlCalcular = 'Dividir';
    }
  }

  void calcularResult() {
    if (operacion.length != 0) {
      if (operacion2.length != 0) {
        switch (controlCalcular) {
          case 'Sumar':
            cadena =
                (stringToInt(operacion) + stringToInt(operacion2)).toString();

            break;
          case 'Restar':
            cadena =
                (stringToInt(operacion) - stringToInt(operacion2)).toString();

            break;
          case 'Multiplicar':
            cadena =
                (stringToInt(operacion) * stringToInt(operacion2)).toString();

            break;
          case 'Dividir':
            if (stringToInt(operacion2) == 0) {
              cadena = 'Error';
            } else {
              cadena =
                  (stringToInt(operacion) / stringToInt(operacion2)).toString();
            }
            break;
          default:
        }
        operacion = '';
        operacion2 = '';
        control = false;
      }
    }
  }

  void capturarCaracter(String caracter) {
    if (control == false) {
      if (caracter.length == 1) {
        if (operacion.length < 12) {
          operacion = operacion + caracter;
          cadena = operacion;
        }
      } else {
        throw ('Error 106');
      }
    } else {
      if (caracter.length == 1) {
        if (operacion2.length < 12) {
          operacion2 = operacion2 + caracter;
          cadena = operacion2;
        }
      } else {
        throw ('Error 106');
      }
    }
  }

  void clearCadena() {
    operacion = '';
    cadena = '';
    operacion2 = '';
    control = false;
  }

  int stringToInt(String texto) => int.parse(texto);
}
