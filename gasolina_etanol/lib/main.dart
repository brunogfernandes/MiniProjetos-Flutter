import 'package:flutter/material.dart';

void main() {
  runApp(const GasolinaEtanolApp());
}

class GasolinaEtanolApp extends StatelessWidget {
  const GasolinaEtanolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Combustível mais vantajoso',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const GasolinaEtanolPage(),
    );
  }
}

class GasolinaEtanolPage extends StatefulWidget {
  const GasolinaEtanolPage({super.key});

  @override
  State<GasolinaEtanolPage> createState() => _GasolinaEtanolPageState();
}

class _GasolinaEtanolPageState extends State<GasolinaEtanolPage> {
  double gasolina = 0.0;
  double etanol = 0.0;
  String resultado = '';

  TextEditingController gasolinaController = TextEditingController();
  TextEditingController etanolController = TextEditingController();

  void calularCombustivelMaisVantajoso() {
    double razao = etanol / gasolina;
    double porcentagem = razao * 100;

    if (razao < 0.7) {
      resultado = 'abasteça com etanol';
    } else {
      resultado = 'abasteça com gasolina';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Resultado do Cálculo'),
          content: Text(
            "O preço do álcool corresponde à $porcentagem% do preço da gasolina, então $resultado.",
            style: const TextStyle(
              fontSize: 16.0,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Fechar'),
            ),
          ],
        );
      },
    );
  }

  void handleButtonPressed() {
    gasolina = double.tryParse(gasolinaController.text) ?? 0.0;
    etanol = double.tryParse(etanolController.text) ?? 0.0;

    if (gasolina > 0 && etanol > 0) {
      calularCombustivelMaisVantajoso();
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erro'),
            content: const Text('Por favor, insira valores válidos.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Fechar'),
              ),
            ],
          );
        },
      );
    }
  }

  void handleRestFields(){
    gasolinaController.clear();
    etanolController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Combustível mais vantajoso', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Insira os preços dos combustíveis", 
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Preço da gasolina'),
              keyboardType: TextInputType.number,
              controller: gasolinaController,
            ),
            const SizedBox(height: 16.0),
            TextField(
              decoration: const InputDecoration(labelText: 'Preço do etanol'),
              keyboardType: TextInputType.number,
              controller: etanolController,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: handleButtonPressed,
                    child: const Text('Calcular'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: handleRestFields,
                    child: const Text('Limpar'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
