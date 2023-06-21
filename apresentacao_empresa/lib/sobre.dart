import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171810),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Sobre a empresa",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(
                  Icons.code_rounded,
                  color: Color.fromARGB(255, 255, 105, 60),
                  size: 54,
                ),
              ),
              Text(
                "Sobre a Empresa",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 105, 60),
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ), 
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Text(
              "A TechSolutions é uma empresa fictícia de consultoria em tecnologia da informação (TI) especializada em fornecer soluções inovadoras para os desafios tecnológicos enfrentados pelas empresas. Nossa equipe de consultores altamente qualificados e experientes está pronta para ajudar as organizações a otimizarem seus processos, melhorarem a eficiência e impulsionarem o crescimento por meio da aplicação estratégica de soluções tecnológicas.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          itemLista("Nossa Visão", "Ser reconhecida como a principal consultoria em tecnologia da informação, impulsionando a transformação digital e fornecendo soluções inovadoras que capacitam o sucesso empresarial."),
          itemLista("Nossa Missão", "Capacitar as empresas a obterem vantagens competitivas por meio do uso estratégico de tecnologia da informação, fornecendo serviços de consultoria de alta qualidade e soluções personalizadas que atendam às suas necessidades exclusivas."),
        ],
      ),
    );
  }

  Padding itemLista(String titulo, String descricao){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 105, 60),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ), 
          ),
          Text(
            descricao,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}