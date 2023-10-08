import 'package:flutter/material.dart';
import 'Experiencia.dart';
import 'Formacao.dart';
import 'Pessoal.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: _titulo(),
          backgroundColor: Colors.white,
          body: _body(),
        ),
      ),
    );
  }

  _titulo() {
    return AppBar(
        title: Text("Meu Perfil"),
        centerTitle: true,
        backgroundColor: Color(0xff4a4a4b),
        bottom: TabBar(tabs: [
          Tab(
            text: 'Pessoal',
          ),
          Tab(
            text: 'Formação',
          ),
          Tab(
            text: 'Experiência',
          ),
        ]));
  }

  _body() {
    return const TabBarView(
      children: [
        Pessoal(),
        Formacao(),
        Experiencia(),
      ],
    );
  }
}

