import 'package:flutter/material.dart';
import '../pages/signup_page.dart';
import '../pages/main_page.dart';

class LoginDesign extends StatefulWidget {
  const LoginDesign({super.key});

  @override
  _LoginDesignState createState() => _LoginDesignState();
}

class _LoginDesignState extends State<LoginDesign> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(46, 133, 157, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(100),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(239, 251, 252, 1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Logo centralizado
                  Center(
                    child: Image.asset(
                      "logoazul1.png",
                      height: 200, 
                      fit: BoxFit.contain,
                    ),
                  ),

                  // 🔹 Espaçamento ajustável entre logo e texto
                  const SizedBox(height: 0), 

                  // Texto centralizado
                  const Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // 🔹 Espaçamento ajustável entre texto e campos
                  const SizedBox(height: 30),

                  // Campo de email
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email obrigatório";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 15),

                  // Campo de senha
                  TextFormField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(labelText: "Senha"),
                    validator: (value) {
                      if (value == null || value.length < 8) {
                        return "Senha precisa ter no mínimo 8 caracteres";
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 30),

                  // Botão de login
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(29, 75, 100, 1),
                      minimumSize: const Size(double.infinity, 48),
                    ),
                    onPressed: _login,
                    child: const Text("LOG IN",
                    style: TextStyle(
                    color: Color.fromRGBO(239, 251, 252, 1) ), ),
                  ),

                  // 🔹 Espaçamento ajustável entre LOG IN e SIGN UP
                  const SizedBox(height: 12),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Não tem uma conta?",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ),
                          );
                        },
                        child: const Text(
                          " SIGN UP",
                          style: TextStyle(
                            color: Color.fromRGBO(225, 105, 30, 1), // laranja
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline, // 🔹 sublinhado
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}