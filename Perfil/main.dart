import 'package:flutter/material.dart';


void main() {
  runApp(AppPerfil());
}


class AppPerfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: App(),
    );
  }
}


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232323), 
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Informações Pessoais",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20, 
                    ),
                  ),
                  Image.network(
                    'https://www.setsites.com.br/wp-content/uploads/2023/07/bronson_set_sites.png',
                    width: 260,
                    height: 260,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Perfil Profissional:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Eder Bronson",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Idade:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "40 anos",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Formação:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Comunicação, Ciência e Tecnologia - FAPCOM",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                Text(
                  "Produção Fonográfica - Anhembi Morumbi",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                Text(
                  "Sistemas para Internet - FIAP",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Experiência:",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "CEO - set. sites",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                Text(
                  "Diretor de Cultura - UBES",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                Text(
                  "Designer Lecy Brandão - ALESP",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
                Text(
                  "Repórter - Folha Online",
                  style: TextStyle(
                    color: Colors.white, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
