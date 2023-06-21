import 'package:apresentacao_empresa/clientes.dart';
import 'package:apresentacao_empresa/contato.dart';
import 'package:apresentacao_empresa/servicos.dart';
import 'package:apresentacao_empresa/sobre.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BRV TechSolutions',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF06ee6e)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'BRV TechSolutions'),
      routes: {
        '/sobre': (context) => const SobrePage(),
        '/servicos': (context) => const ServicosPage(),
        '/clientes': (context) => const ClientesPage(),
        '/contato': (context) => const ContatoPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171810),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/logo.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              botaoHome('A Empresa', Icons.code, Colors.deepOrange, context, '/sobre'),
              botaoHome('Serviços', Icons.build, Colors.cyan, context, '/servicos'),
            ], 
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              botaoHome('Clientes', Icons.supervisor_account_rounded, Colors.lightGreen, context, '/clientes'),
              botaoHome('Contato', Icons.message_rounded, Colors.green, context, '/contato'),
            ], 
          )
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  GestureDetector botaoHome(String nome, IconData icone, Color cor, BuildContext context, String rota){
    return GestureDetector(
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          color: cor,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icone,
              color: Colors.white,
              size: 72,
            ),
            Text(
              nome,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24
              ),
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, rota);
      },
    );
  }
}