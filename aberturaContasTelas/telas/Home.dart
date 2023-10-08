import 'package:flutter/material.dart';
import 'Sobre.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController nome = TextEditingController();
  TextEditingController idade = TextEditingController();
  String sexo = 'Masculino';
  String escolaridade = 'Ensino Fundamental';
  double limite = 100;
  bool nacionalidade = false;
  bool resultado = false;

  void _exibeValor() {
    setState(() {
      resultado = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Color(0xffffffff),
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("ABRA SUA CONTA",
          style: TextStyle(
            color: Color(0xffffffff),
            fontWeight: FontWeight.bold,
          )),
      centerTitle: true,
      backgroundColor: Color(0xff06ba1e), // Cor verde
    );
  }

  _corpo() {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _campo('Nome: ', nome),
            _campo('Idade: ', idade),
            _dropdownSexo('Sexo: '),
            _dropdownEscolaridade('Escolaridade: '),
            _slider("Limite: "),
            _switch("Brasileiro: "),
            _botao(context, 'Vá para Sobre'),
          ],
        ),
      ),
    );
  }

  _campo(String titulo, TextEditingController controller) {
    return Row(
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff068e2e),
          ),
        ),
        Expanded(
          flex: 2,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.black),
            ),
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 25.0),
            controller: controller,
          ),
        ),
      ],
    );
  }

  _dropdownSexo(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          texto,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff068e2e),
          ),
        ),
        DropdownButton(
          value: sexo,
          items: ['Masculino', 'Feminino', 'Outro'].map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? valorSelecionado) {
            setState(() {
              resultado = false;
              sexo = valorSelecionado!;
            });
          },
        ),
      ],
    );
  }

  _dropdownEscolaridade(String texto) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          texto,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff068e2e),
          ),
        ),
        DropdownButton(
          value: escolaridade,
          items: [
            'Ensino Fundamental',
            'Ensino Médio',
            'Superior Incompleto',
            'Superior Completo',
            'Mestrado',
            'Doutorado'
          ].map((String value) {
            return DropdownMenuItem(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? valorSelecionado) {
            setState(() {
              resultado = false;
              escolaridade = valorSelecionado!;
            });
          },
        ),
      ],
    );
  }

  _slider(titulo) {
    return Row(
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff068e2e),
          ),
        ),
        Slider(
          value: limite,
          min: 0,
          max: 100,
          divisions: 100,
          label: (limite > 70) ? 'Muito alto' : limite.round().toString(),
          onChanged: (double value) {
            setState(() {
              resultado = false;
              limite = value;
            });
          },
          activeColor: Color(0xff06ba1e), // Cor verde
        ),
      ],
    );
  }

  _switch(titulo) {
    return Row(
      children: [
        Text(
          titulo,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xff068e2e),
          ),
        ),
        Switch(
          value: nacionalidade,
          onChanged: (value) {
            setState(() {
              resultado = false;
              nacionalidade = value;
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Color(0xff068e2e), // Cor verde
        ),
      ],
    );
  }

  _botao(BuildContext context, String textoBotao) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        child: Text(
          textoBotao,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: () {
          _onClickOutraTela(context);
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xff06ba1e), // Cor verde
        ),
      ),
    );
  }

  _onClickOutraTela(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return Sobre(
          nome: nome.text,
          idade: idade.text,
          sexo: sexo,
          escolaridade: escolaridade,
          limite: limite,
          nacionalidade: nacionalidade,
        );
      }),
    );
  }
}
S