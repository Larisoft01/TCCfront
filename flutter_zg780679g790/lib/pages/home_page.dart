import 'package:flutter/material.dart';
import '../design/home_design.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeDesign(
      appBarColor: const Color.fromRGBO(46, 133, 157, 1),
      iconColor: Color.fromRGBO(225, 105, 30, 1), // altera a cor dos ícones
      logoPath: "logo.png",
      logoAppBarPath: "logo.png",
    );
  }
}
