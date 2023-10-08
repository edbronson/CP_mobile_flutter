import 'package:flutter/material.dart';

class Pessoal extends StatelessWidget {
  const Pessoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.network(
            'https://www.setsites.com.br/wp-content/uploads/2023/07/bronson_set_sites.png',
            width: 260,
            height: 260,
          ),
          SizedBox(height: 20),import 'package:flutter/material.dart';

class Experiencia extends StatelessWidget {
  const Experiencia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            'Experiência',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff238fec),
            ),
          ),
          Column(
            children: [
              _info('Atual: ', 'Dev Wordpress - 1 ano'),
              _info('Anterior: ', 'Designer Grafico - 15 anos'),
              _info('Anterior: ', 'Jornalismo - 20 anos'),
              _info('Anterior: ', 'Cobrador - 1 ano'),
            ],
          ),
        ],
      ),
    );
  }

  _info(titulo, info) {
    return Row(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff238fec),
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

          Column(
            children: [
              _info('Nome: ', 'Eder Bronson'),
              _info('Idade: ', '41 anos'),
              _info('Sexo: ', 'Masculino'),
              _info('Altura: ', '1,83'),
              _info('Peso: ', '84 kg'),
            ],
          ),
        ],
      ),
    );
  }

  _info(titulo, info) {
    return Row(
      children: [
        Text(
          titulo,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Color(0xff238fec),
          ),
        ),
        Text(
          info,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
