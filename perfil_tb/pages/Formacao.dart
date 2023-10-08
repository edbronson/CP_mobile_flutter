import 'package:flutter/material.dart';

class Formacao extends StatelessWidget {
  const Formacao({Key? key}) : super(key: key);

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
            'Formação',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: Color(0xff238fec),
            ),
          ),
          Column(
            children: [
              _info('Faculdade: ', 'Jornalismo - FAPCOM'),
              _info('Faculdade: ', 'Fonografia - Anhembi'),
              _info('Faculdade: ', 'Sistemas Internet - FIAP'),
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
