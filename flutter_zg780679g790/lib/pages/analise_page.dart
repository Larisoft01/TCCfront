import 'package:flutter/material.dart';
import '../design/analise_design.dart';

class AnalisePage extends StatelessWidget {
  const AnalisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(46, 133, 157, 1), // 🔹 Cor personalizada
          elevation: 5, // sombra
          shape: const RoundedRectangleBorder( // 🔹 borda arredondada
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: const Text(
            "Análise",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white, // 🔹 cor do texto
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Image.asset(
                'logo.png', // 🔹 caminho da sua logo
                height: 40,         // 🔹 altura da imagem
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.white, // 🔹 cor da barrinha
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: "Dia"),
              Tab(text: "Semana"),
              Tab(text: "Mês"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildBuildBuildAnalise(),
            _buildAnalise("Semana", 120, 240, ["Manhã", "Tarde", "Noite"]),
            _buildAnalise("Mês", 450, 900, ["Manhã", "Tarde", "Noite"]),
          ],
        ),
      ),
    );
  }

  AnaliseDesign buildBuildBuildAnalise() => buildBuildAnalise();

  AnaliseDesign buildBuildAnalise() => _buildAnalise("Dia", 30, 96, ["Manhã", "Tarde", "Noite"]);

  AnaliseDesign _buildAnalise(
      String label, int clientes, int mesa, List<String> testes) {
    return AnaliseDesign(
      label: label,
      numberOfClients: clientes,
      mostUsedTable: mesa,
      testsList: testes,
      logoPath: "logoazul1.png",
      logoAppBarPath: "logoazul1.png",
    );
  }
}
