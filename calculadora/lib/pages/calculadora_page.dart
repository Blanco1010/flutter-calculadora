import 'package:calculadora/classes/calculadora.dart';
import 'package:flutter/material.dart';

class CalculadoraPage extends StatefulWidget {
  createState() {
    return _CalculadoraPageState();
  }
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  final calculadora = new Calculadora();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Calculadora'),
          centerTitle: true,
          backgroundColor: Colors.black),
      body: Column(
        children: [
          SizedBox(height: 150),
          _barraOperacion(),
          SizedBox(height: 100),
          _botonesCalculadoraLinea_1(),
          SizedBox(height: 25),
          _botonesCalculadoraLinea_2(),
          SizedBox(height: 25),
          _botonesCalculadoraLinea_3(),
          SizedBox(height: 25),
          _botonesCalculadoraLinea_4(),
        ],
      ),
    );
  }

  Widget _barraOperacion() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(height: 25),
        Text('${calculadora.cadena}', //Limite 13 caracteres
            textScaleFactor: 4,
            maxLines: 1),
      ],
    );
  }

  Widget _botonesCalculadoraLinea_1() {
    return Row(
      children: [
        SizedBox(width: 70),
        FloatingActionButton(
            child: Text('1', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('1');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('2', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('2');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('3', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('3');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('*', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              calculadora.multiplicar();
            }),
        SizedBox(width: 25),
      ],
    );
  }

  Widget _botonesCalculadoraLinea_2() {
    return Row(
      children: [
        SizedBox(width: 70),
        FloatingActionButton(
            child: Text('4', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('4');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('5', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('5');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('6', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('6');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('/', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              calculadora.dividir();
            }),
        SizedBox(width: 25),
      ],
    );
  }

  Widget _botonesCalculadoraLinea_3() {
    return Row(
      children: [
        SizedBox(width: 70),
        FloatingActionButton(
            child: Text('7', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('7');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('8', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('8');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('9', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('9');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('+', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              calculadora.sumar();
            }),
        SizedBox(width: 25),
      ],
    );
  }

  Widget _botonesCalculadoraLinea_4() {
    return Row(
      children: [
        SizedBox(width: 70),
        FloatingActionButton(
            child: Text('C', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: _clear),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('0', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              _capturar('0');
            }),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('=', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: _calcular),
        SizedBox(width: 25),
        FloatingActionButton(
            child: Text('-', textScaleFactor: 2),
            backgroundColor: Colors.black,
            onPressed: () {
              calculadora.restar();
            }),
        SizedBox(width: 25),
      ],
    );
  }

  void _capturar(String caracter) {
    setState(() {
      calculadora.capturarCaracter(caracter);
    });
  }

  void _clear() {
    setState(() {
      calculadora.clearCadena();
    });
  }

  void _calcular() {
    setState(() {
      calculadora.calcularResult();
    });
  }
}
