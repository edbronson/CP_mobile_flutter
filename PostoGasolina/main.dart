import 'package:flutter/material.dart';


void main() {
  runApp(GasApp());
}


class GasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PostoDeGasApp(),
    );
  }
}


class PostoDeGasApp extends StatefulWidget {
  @override
  _AlcoolGasolinaAppState createState() => _AlcoolGasolinaAppState();
}


class _AlcoolGasolinaAppState extends State<PostoDeGasApp> {
  double precoAlcool = 0;
  double precoGasolina = 0;
  String resultado = '';


  void calcular() {
    double res = precoAlcool / precoGasolina;
    String texto = res > 0.7 ? 'Melhor Gasolina' : 'Melhor Álcool';
    setState(() {
      resultado = texto;
    });
  }


  void valordoAlcool(String preco) {
    setState(() {
      precoAlcool = double.parse(preco);
    });
  }


  void valordaGasolina(String preco) {
    setState(() {
      precoGasolina = double.parse(preco);
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
              'Álcool ou Gasolina',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            Image.network(
              'https://cdn-icons-png.flaticon.com/512/3485/3485537.png',
              width: 200,
              height: 200,
              alignment: Alignment.center,
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Digite o preço do álcool...',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onChanged: valordoAlcool,
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                  labelText: 'Digite o preço do gasolina...',
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )),
              onChanged: valordaGasolina,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: calcular,
              child: Text('Calcular'),
            ),
            Text(
              resultado,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
