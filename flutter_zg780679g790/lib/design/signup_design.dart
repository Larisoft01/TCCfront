import 'package:flutter/material.dart';

import '../pages/login_page.dart';


class SignUpDesign extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController confirmEmailController;
  final TextEditingController passwordController;
  final TextEditingController companyController;
  final TextEditingController tables2Controller;
  final TextEditingController tables4Controller;
  final TextEditingController tables8Controller;
  final VoidCallback onSubmit;
  final VoidCallback onLoginTap;
  final String? Function(String?)? passwordValidator;
  final String? Function(String?)? emailValidator;
  final String? Function(String?)? confirmEmailValidator;
  final String? Function(String?)? numberValidator;

  const SignUpDesign({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.confirmEmailController,
    required this.passwordController,
    required this.companyController,
    required this.tables2Controller,
    required this.tables4Controller,
    required this.tables8Controller,
    required this.onSubmit,
    required this.onLoginTap,
    this.passwordValidator,
    this.emailValidator,
    this.confirmEmailValidator,
    this.numberValidator,
  });

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(46, 133, 157, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(239, 251, 252, 1),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Logo + título
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 20),
                        Image.asset(
                          "logoazul1.png",
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize:32, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Informações Pessoais
                  _sectionTitle("Informações Pessoais"),
                  TextFormField(
                    controller: nameController,
                    decoration:
                        const InputDecoration(labelText: "Nome Completo"),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: emailValidator,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: confirmEmailController,
                    decoration:
                        const InputDecoration(labelText: "Confirme seu Email"),
                    validator: confirmEmailValidator,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Senha",
                      helperText:
                          "Mínimo 8 caracteres, 1 maiúscula, 1 símbolo !@",
                    ),
                    validator: passwordValidator,
                  ),
                  const SizedBox(height: 20),

                  // Empresa
                  _sectionTitle("Informações da Empresa"),
                  TextFormField(
                    controller: companyController,
                    decoration:
                        const InputDecoration(labelText: "Nome da Empresa"),
                  ),
                  const SizedBox(height: 20),

                  // Mesas
                  _sectionTitle("Mesas do Restaurante"),
                  TextFormField(
                    controller: tables2Controller,
                    decoration:
                        const InputDecoration(labelText: "Mesas de 2 lugares"),
                    keyboardType: TextInputType.number,
                    validator: numberValidator,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: tables4Controller,
                    decoration:
                        const InputDecoration(labelText: "Mesas de 4 lugares"),
                    keyboardType: TextInputType.number,
                    validator: numberValidator,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: tables8Controller,
                    decoration:
                        const InputDecoration(labelText: "Mesas de 8 lugares"),
                    keyboardType: TextInputType.number,
                    validator: numberValidator,
                  ),
                  const SizedBox(height: 30),

                  // Botão Sign Up
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: onSubmit,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(29, 75, 100, 1),
                        minimumSize: const Size(double.infinity, 48),
                      ),
                      child: const Text("SIGN UP"),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Linha "Já tem conta? Log In"
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Já tem conta? ",
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
                              builder: (context) => const LoginPage(),
                            ),
                          );
                        },
                          child: const Text(
                            "LOG IN",
                            style: TextStyle(
                              color: Color.fromRGBO(225, 105, 30, 1), // laranja
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
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
