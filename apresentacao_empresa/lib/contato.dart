import 'package:flutter/material.dart';

class ContatoPage extends StatelessWidget {
  const ContatoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171810),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Contato",
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
              Padding(padding: EdgeInsets.only(right: 15.0), 
                child: Icon(
                  Icons.message_rounded,
                  color: Colors.greenAccent,
                  size: 48
                ),
              ),
              Text(
                "Fale conosco!",
                style: TextStyle(
                  color: Colors.greenAccent,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ), 
              ),
            ],
          ),
          itemLista("Email", "contato@brvtech.com"),
          itemLista("Telefone", "(19) 3333-3333"),
          itemLista("Celular", "(19) 99999-9999")
        ],
      )
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
              color: Colors.greenAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.justify,
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