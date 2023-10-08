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
          title: const Text("Vai Corinthians!"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: _corpo(),
    );
  }

  _corpo() {
    return PageView(
      children: [
        _imagem('images/camisaUm.png', 'Camisa listrada', 'Ano: 2022',
            'Marca: Nike'),
        _imagem('images/camisaDois.png', 'Camisa Tradicional', 'Ano: 2022',
            'Marca: Nike'),
        _imagem('images/camisaTres.png', 'Terceira Camisa', 'Ano: 2022',
            'Marca: Nike'),
        _imagem('images/camisaQuatro.png', 'Terceira Camisa', 'Ano: 2023',
            'Marca: Nike'),
        _imagem('images/camisaCinco.png', 'Camisa de Treino', 'Ano: 2022',
            'Marca: Nike'),
      ],
    );
  }

  _imagem(String img, String nome, String anime, String estudio) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(16),
      color: Color(0xffffffff),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image.asset(
            img,
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Column(
            children: [
              _texto(nome),
              _texto(anime),
              _texto(estudio),
            ],
          )
        ],
      ),
    );
  }

  _texto(String texto) {
    return Center(
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 25,
          color: Color(0xff000000),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
