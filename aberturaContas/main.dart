import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  String nome = '';
  int idade = 0;
  String sexo = 'Masculino';
  String escolaridade = 'Médio';
  double limite = 0;
  bool brasileiro = false;
  String resultado = '';

  void confirmar() {
    setState(() {
      resultado = 'Nome: $nome\n' +
          'Idade: $idade\n' +
          'Sexo: $sexo\n' +
          'Escolaridade: $escolaridade\n' +
          'Limite: $limite\n' +
          (brasileiro ? 'Brasileiro' : 'Estrangeiro');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff969696),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Abertura de Conta',
                    style: TextStyle(
                      fontSize: 26,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Nome',
                    ),
                    onChanged: (valor) {
                      setState(() {
                        nome = valor;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Idade',
                    ),
                    onChanged: (valor) {
                      setState(() {
                        idade = int.tryParse(valor) ?? 0;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    value: sexo,
                    onChanged: (valor) {
                      setState(() {
                        sexo = valor ?? '';
                      });
                    },
                    items: ['Masculino', 'Feminino'].map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Sexo',
                    ),
                  ),
                  SizedBox(height: 10),
                  DropdownButtonFormField<String>(
                    value: escolaridade,
                    onChanged: (valor) {
                      setState(() {
                        escolaridade = valor ?? '';
                      });
                    },
                    items: ['Médio', 'Graduação', 'Pós Graduação', 'MBA']
                        .map((item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      labelText: 'Escolaridade',
                    ),
                  ),
                  SizedBox(height: 10),
                  Slider(
                    value: limite,
                    min: 0,
                    max: 1000,
                    divisions: 20,
                    onChanged: (valor) {
                      setState(() {
                        limite = valor;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Limite: $limite',
                    style: TextStyle(fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Brasileiro',
                        style: TextStyle(fontSize: 12),
                      ),
                      Switch(
                        value: brasileiro,
                        onChanged: (valor) {
                          setState(() {
                            brasileiro = valor;
                          });
                        },
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: confirmar,
                    child: Text('Confirmar'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    resultado,
                    style: TextStyle(
                      fontSize: 16,
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
