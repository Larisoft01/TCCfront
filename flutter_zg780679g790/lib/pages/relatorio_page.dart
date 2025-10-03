import 'package:flutter/material.dart';

class RelatorioPage extends StatelessWidget {
  const RelatorioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Relatório")),
      body: const Center(
        child: Text(
          "Página de Relatório",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}