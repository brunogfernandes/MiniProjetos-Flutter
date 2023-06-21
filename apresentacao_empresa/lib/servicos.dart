import 'package:flutter/material.dart';

class ServicosPage extends StatelessWidget {
  const ServicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171810),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Serviços",
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
                  Icons.build_circle,
                  color: Color.fromARGB(255, 125, 255, 255),
                  size: 48,
                ),
              ),
              Text(
                "Serviços",
                style: TextStyle(
                  color: Color.fromARGB(255, 125, 255, 255),
                  fontSize: 32,
                  fontWeight: FontWeight.bold
                ), 
              ),
            ],
          ),
          itemLista("Consultoria em TI", "Nossos consultores trabalham em estreita colaboração com as empresas para entender suas necessidades e objetivos. Em seguida, desenvolvemos estratégias personalizadas para implementar soluções de TI eficientes e escaláveis, alinhadas às metas de negócios."),
          itemLista("Gestão de Projetos", "Oferecemos serviços completos de gerenciamento de projetos, desde o planejamento inicial até a implementação e monitoramento contínuo. Nossa abordagem estruturada garante a entrega dentro do prazo e do orçamento, ao mesmo tempo em que atende aos requisitos específicos de cada projeto."),
          itemLista("Segurança da Informação", "A segurança dos dados é uma preocupação crescente para as empresas. A TechSolutions fornece avaliações abrangentes de segurança, identifica vulnerabilidades e implementa medidas de proteção para salvaguardar informações confidenciais e garantir a conformidade com regulamentações relevantes."),
        ]
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
              color: Color.fromARGB(255, 125, 255, 255),
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