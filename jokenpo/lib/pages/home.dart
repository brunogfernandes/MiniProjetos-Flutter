// ignore_for_file: avoid_print

import 'dart:math';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List options = ["fire", "grass", "water"];
  String _message = "Escolha uma opção";
  String _imagePath = "images/question.png";

  void _play(String choice) {
    int i = Random().nextInt(options.length);
    String randomChoice = options[i];
    _imagePath = "images/" + randomChoice + ".png";
    print("Seleção do usuário: " + choice + ". Seleção do app: " + randomChoice);

    if ((choice == "fire" && randomChoice == "grass") ||
        (choice == "grass" && randomChoice == "water") ||
        (choice == "water" && randomChoice == "fire")) {
      //win
      setState(() {
        _message = "Você venceu!";
      });
    } else if ((choice == "fire" && randomChoice == "water") ||
        (choice == "grass" && randomChoice == "fire") ||
        (choice == "water" && randomChoice == "grass")) {
      //lost
      setState(() {
        _message = "Você perdeu!";
      });
    } else {
      //draw
      setState(() {
        _message = "Empate!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JokenPo"),
      ),
      body: Container(
          padding: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  "Escolha do oponente",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Image.asset(_imagePath, height: 150),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 16),
                child: Text(
                  _message,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => _play("fire"),
                    child: Image.asset("images/fire.png", height: 100),
                  ),
                  GestureDetector(
                    onTap: () => _play("grass"),
                    child: Image.asset("images/grass.png", height: 100),
                  ),
                  GestureDetector(
                    onTap: () => _play("water"),
                    child: Image.asset("images/water.png", height: 100),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Image.asset("images/chart.png", height: 100),
              )
            ],
          )),
    );
  }
}
