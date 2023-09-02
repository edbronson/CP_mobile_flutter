import 'package:flutter/material.dart';


void main() {
  runApp(CalculoImcApp());
}


class CalculoImcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculoIMC(),
    );
  }
}


class CalculoIMC extends StatefulWidget {
  @override
  _CalculoState createState() => _CalculoState();
}


class _CalculoState extends State<CalculoIMC> {
  double peso = 0;
  double altura = 0;
  String resultado = '';


  void calcular() {
    double res = peso / (altura * altura);
    String texto = '';
    if (res < 18.5)
      texto = 'Abaixo do peso';
    else if (res < 24.9)
      texto = 'Peso normal';
    else if (res < 29.9)
      texto = 'Sobrepeso';
    else if (res < 34.9)
      texto = 'Obesidade Grau I';
    else if (res < 39.9)
      texto = 'Obesidade Grau II';
    else
      texto = 'Obesidade Grau III ou Mórbida';
    setState(() {
      resultado = texto;
    });
  }


  void seuPeso(String p) {
    setState(() {
      peso = double.parse(p);
    });
  }


  void suaAltura(String a) {
    setState(() {
      altura = double.parse(a);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Cálculo do IMC',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/1934/1934343.png',
              fit: BoxFit.contain,
              height: 200,
            ),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                  labelText: 'Digite seu Peso',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onChanged: seuPeso,
            ),
            SizedBox(height: 25),
            TextField(
              style: TextStyle(
                color: Colors.blue,
              ),
              decoration: InputDecoration(
                  labelText: 'Digite sua Altura',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onChanged: suaAltura,
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular'),
            ),
            Text(
              resultado,
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
