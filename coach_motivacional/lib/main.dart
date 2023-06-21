// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const CoachMotivacionalApp());
}

class CoachMotivacionalApp extends StatelessWidget {
  const CoachMotivacionalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coach Motivacional',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const TelaCoachMotivacional(),
    );
  }
}

class TelaCoachMotivacional extends StatefulWidget {
  const TelaCoachMotivacional({super.key});

  @override
  _TelaCoachMotivacionalState createState() => _TelaCoachMotivacionalState();
}

class _TelaCoachMotivacionalState extends State<TelaCoachMotivacional> {
  List<String> frases = [
    "Acredite em si mesmo e todo o resto será consequência.",
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "A persistência é o caminho do êxito.",
    "Nada é impossível. A palavra em si diz: 'Eu sou possível!'",
    "O único lugar onde o sucesso vem antes do trabalho é no dicionário.",
    "O sucesso normalmente vem para quem está ocupado demais para procurar por ele."
  ];

  String fraseExibida = '';

  void gerarFraseAleatoria() {
    setState(() {
      final random = Random();
      final index = random.nextInt(frases.length);
      fraseExibida = frases[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Motive-se!'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                fraseExibida,
                style: const TextStyle(
                  fontSize: 24, 
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 61, 61, 61)
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: ElevatedButton(
                  onPressed: gerarFraseAleatoria,
                  child: const Text('Gerar frase motivacional'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}