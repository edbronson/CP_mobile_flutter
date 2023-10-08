import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  double valor = 0;
  String origem = 'D';
  String destino = 'D';
  String resultado = '';

  void converter() {
    double res = 0;

    if ((origem == 'D') && (destino == 'D'))
      res = valor * 1;
    else if ((origem == 'D') && (destino == 'R'))
      res = valor * 5.24;
    else if ((origem == 'D') && (destino == 'E'))
      res = valor * 0.93;
    else if ((origem == 'R') && (destino == 'R'))
      res = valor * 1;
    else if ((origem == 'R') && (destino == 'D'))
      res = valor / 5.24;
    else if ((origem == 'R') && (destino == 'E'))
      res = valor / 5.61;
    else if ((origem == 'E') && (destino == 'E'))
      res = valor * 1;
    else if ((origem == 'E') && (destino == 'D'))
      res = valor * 1.07;
    else if ((origem == 'E') && (destino == 'R')) res = valor * 5.61;

    setState(() {
      resultado = 'Resultado: ' + res.toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff222222), // Fundo preto
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/600/600282.png',
                    width: 120,
                    height: 120,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Conversor de Moedas',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white, // Texto branco
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Valor',
                      labelStyle:
                          TextStyle(color: Colors.white), // Label em branco
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (v) {
                      setState(() {
                        valor = double.tryParse(v) ?? 0;
                      });
                    },
                    style: TextStyle(color: Colors.white), // Texto em branco
                  ),
                  SizedBox(height: 20),
                  Text(
                    'De',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white), // Texto em branco
                  ),
                  SizedBox(height: 20),
                  DropdownButtonFormField<String>(
                    value: origem,
                    onChanged: (valor) {
                      setState(() {
                        origem = valor ?? '';
                      });
                    },
                    items: ['D', 'R', 'E'].map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item == 'D'
                              ? 'Dólar'
                              : item == 'R'
                                  ? 'Real'
                                  : 'Euro',
                          style: TextStyle(
                              color: Color(0xff024e12)), // Texto em branco
                        ),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Origem',
                      labelStyle: TextStyle(
                          color: Color(0xffffffff)), // Label em branco
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Para',
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffffffff)), // Texto em branco
                  ),
                  DropdownButtonFormField<String>(
                    value: destino,
                    onChanged: (valor) {
                      setState(() {
                        destino = valor ?? '';
                      });
                    },
                    items: ['D', 'R', 'E'].map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(
                          item == 'D'
                              ? 'Dólar'
                              : item == 'R'
                                  ? 'Real'
                                  : 'Euro',
                          style: TextStyle(
                              color: Color(0xff076732)), // Texto em branco
                        ),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Destino',
                      labelStyle:
                          TextStyle(color: Colors.white), // Label em branco
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: converter,
                    child: Text(
                      'Converter',
                      style: TextStyle(color: Colors.white), // Texto em branco
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.green), // Botão verde
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    resultado,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white, // Texto em branco
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
