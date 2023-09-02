import 'package:flutter/material.dart';


void main() {
  runApp(AppContador());
}


class AppContador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}


class _AppState extends State<App> {
  int cont = 0;


  void alterarCont(String sinal) {
    setState(() {
      if (sinal == "+") {
        cont++;
      } else {
        if (cont > 0) {
          cont--;
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232323),
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "CONTADOR",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),


                  SizedBox(height: 30),
                  Container(
                    width: 190.0,
                    height: 190.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://img.freepik.com/vetores-premium/contador-de-temporizador-cronometro-analogico-na-mao-do-arbitro-cronometro-ilustracao-vetorial-em-estilo-simples_165488-2929.jpg"))),
                  ),


                  SizedBox(height: 10),
                  Text(
                    cont.toString(),
                    style: TextStyle(
                      fontSize: 60,
                      color: Color(0xff2ec4b3),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => alterarCont('+'),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Text("+", style: TextStyle(fontSize: 30)),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () => alterarCont('-'),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Text("-", style: TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
