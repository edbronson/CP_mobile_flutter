import 'package:flutter/material.dart';


void main() => runApp(AppContador());


class AppContador extends StatelessWidget {
  const AppContador({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TelaPrincipal();
  }
}


class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}


class _TelaPrincipalState extends State<TelaPrincipal> {
  TextEditingController numeroUm = TextEditingController();
  TextEditingController numeroDois = TextEditingController();


  double quantidade = 0;


  void _exibeValor() {
    setState(() {
      double valor =
          double.parse(numeroUm.text) * double.parse(numeroDois.text);
      quantidade = valor;
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: Scaffold(
        backgroundColor: Color(0xff232323),
        body: _body(),
      ),
    );
  }


  _body() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(50),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            'https://cdn-icons-png.flaticon.com/512/3625/3625050.png',
            width: 300,
            height: 300,
          ),
          _campo(),
          _button(),
          _texto(),
        ],
      ),
    );
  }


  _campo() {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: "Digite o primeiro número",
              labelStyle: TextStyle(color: Colors.blue)),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 20.0),
          controller: numeroUm,
        ),
        TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: "Digite o segundo número",
              labelStyle: TextStyle(color: Colors.blue)),
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue, fontSize: 20.0),
          controller: numeroDois,
        ),
      ],
    );
  }


  _texto() {
    return Text(
      quantidade.toString(),
      style: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 26,
      ),
    );
  }


  _button() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
        ),
        onPressed: _exibeValor,
        child: Text(
          "Resultado",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
