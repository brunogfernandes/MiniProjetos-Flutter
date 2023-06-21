import 'package:flutter/material.dart';

class ClientesPage extends StatelessWidget {
  const ClientesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171810),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Nossos Clientes",
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
                  Icons.supervisor_account_rounded,
                  color: Colors.lightGreen,
                  size: 54
                ),
              ),
              Text(
                "Nossos Clientes",
                style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ), 
              ),
            ],
          ),
          itemLista("Acme Corporation", "Manufatura", "Uma empresa líder na fabricação de produtos eletrônicos. Precisa de consultoria em TI para otimizar sua cadeia de suprimentos e implementar soluções de automação de processos."),
          itemLista("Global Finance Group", "Financeiro", "Uma instituição financeira internacional que busca aprimorar sua segurança de dados e desenvolver uma estratégia de transformação digital para oferecer melhores serviços aos clientes."),
          itemLista("HealthTech Solutions", "Saúde", "Uma startup que desenvolve soluções de saúde digital. Precisa de consultoria em infraestrutura de TI para suportar seu crescimento e garantir a conformidade com regulamentações de proteção de dados."),
          itemLista("Retail Innovators", "Varejo", "Uma rede de varejo que deseja implementar soluções de análise de dados e desenvolver uma plataforma de comércio eletrônico para melhorar a experiência do cliente e impulsionar as vendas.")
        ],
      ),
    );
  }

  Padding itemLista(String nome, String setor, String descricao){
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nome,
            style: const TextStyle(
              color: Colors.lightGreen,
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.justify,
          ),
          Text(
            setor,
            style: const TextStyle(
              color: Colors.lightGreen,
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