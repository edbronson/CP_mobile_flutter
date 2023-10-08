import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Color(0xff000000)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Vagas para Desenvolvedores"),
          centerTitle: true,
          backgroundColor: Color(0xff2c2c2c),
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      child: _corpo(),
    );
  }

  _corpo() {
    return ListView(
      children: [
        _card(
          'Front-End (react)',
          'Salario: 4500.00',
          'Desc: JS, C#, Python, Ruby, PHP',
          'Email: temquesabertudo@gmail.com',
        ),
        SizedBox(height: 10),
        _card(
          'Back-End (Java)',
          'Salario: 150.00',
          'Desc: tanto faz',
          'Contato: +55 11 9656-2154',
        ),
        SizedBox(height: 10),
        _card(
          'Dev. Wordpress',
          'Salario: 15.000,00',
          'Desc: ser lindo',
          'Email: vemficarrico@gmail.com',
        ),
        SizedBox(height: 10),
        _card(
          'Devops Go Horse',
          'Salario: 50.000.00',
          'Desc: qualquer coisa',
          'Email: pocoto@gmail.com',
        ),
        SizedBox(height: 10),
      ],
    );
  }

  _card(String titulo, String nome, String anime, String estudio) {
    return Card(
      margin: EdgeInsets.all(0), // Para remover o espaço entre os Cards.
      elevation: 4, // Adicione esta propriedade para adicionar uma sombra.
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10),
        color: Color(0xffffffff),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff3359e1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _texto(nome),
                  _texto(anime),
                  _texto(estudio),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _texto(String texto) {
    return Text(
      texto,
      style: TextStyle(
        fontSize: 16,
        color: Color(0xff000000),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}