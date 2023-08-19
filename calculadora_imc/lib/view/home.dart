import 'package:calculadora_imc/controller/home_controller.dart';
import 'package:calculadora_imc/model/home_model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  HomeController homeController = HomeController();
  PessoaModel? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Peso'),
              controller: pesoController,
            ),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: 'Altura'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                result = homeController.calculateImc(
                    double.tryParse(pesoController.text) ?? 0,
                    double.tryParse(alturaController.text) ?? 0);
                setState(() {});
              },
              child: const Text('Calcule'),
            ),
            const SizedBox(
              height: 20,
            ),
            buildPersonInformation()
          ],
        ),
      ),
    );
  }

  Widget buildPersonInformation() {
    return result == null
        ? const SizedBox.shrink()
        : Column(
            children: [
              Text('Peso: ${result!.peso.toString()}'),
              Text('Altura: ${result!.altura.toString()}'),
              Text('Imc: ${result!.imc.toString()}'),
              Text(result!.details)
            ],
          );
  }
}
