import 'package:flutter/material.dart';

class HomeDesign extends StatelessWidget {
  final Color appBarColor;
  final Color iconColor;
  final String logoPath;
  final String logoAppBarPath;

  const HomeDesign({
    super.key,
    this.appBarColor = const Color.fromRGBO(46, 133, 157, 1),
    this.iconColor = Colors.blue,
    this.logoPath = "logo.png",
    this.logoAppBarPath = "logo.png",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: appBarColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Image.asset(
              logoAppBarPath,
              height: 50,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Gráfico de fluxo de clientes
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: const Center(
                  child: Text("Gráfico de Fluxo de Clientes"),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Card: mesas ocupadas
            Card(
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.event_seat, size: 40, color: iconColor),
                      const SizedBox(width: 12),
                      const Text(
                        "6/10 Mesas Ocupadas",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Card: tempo de ocupação
            Card(
              child: SizedBox(
                width: double.infinity,
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.timer, size: 40, color: iconColor),
                      const SizedBox(width: 12),
                      const Text(
                        "Mesa 4 está ocupada há 30 min",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
