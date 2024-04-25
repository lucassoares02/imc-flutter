import 'package:flutter/material.dart';
import 'package:imcapp/resultado.dart';
import 'package:imcapp/shared/imc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textoAltura = TextEditingController();
  TextEditingController textoPeso = TextEditingController();
  Imc imc = Imc();

  void _calcularImc(double altura, double peso) {
    double resultado = imc.calcular(altura, peso);
    dynamic classificacao = imc.classificar(resultado);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => Resultado(
              classificado: classificacao,
              imc: resultado,
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image.network(
                "https://play-lh.googleusercontent.com/ouL1lfSP_CyUgb5OUvI51jG3cevMfulA1GZGtS63r3Xfa8STYiIxq6KiY3PkMc6PcTk=w600-h300-pc0xffffff-pd"),
            const SizedBox(height: 20),
            TextField(
              keyboardType: const TextInputType.numberWithOptions(decimal: true),
              controller: textoAltura,
              decoration: const InputDecoration(hintText: "Altura"),
            ),
            const SizedBox(height: 20),
            TextField(
              maxLength: 3,
              keyboardType: TextInputType.number,
              controller: textoPeso,
              decoration: const InputDecoration(hintText: "Peso"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => _calcularImc(double.parse(textoAltura.text), double.parse(textoPeso.text)),
                child: const Text("Calcular"))
          ],
        ),
      ),
    );
  }
}
