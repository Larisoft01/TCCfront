import 'package:flutter/material.dart';
import '../design/signup_design.dart';
import 'main_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _confirmEmailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _tables2Controller = TextEditingController();
  final TextEditingController _tables4Controller = TextEditingController();
  final TextEditingController _tables8Controller = TextEditingController();

  void _signup() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MainPage()),
      );
    }
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) return 'Senha obrigatória';
    if (value.length < 8) return 'Senha deve ter pelo menos 8 caracteres';
    if (!RegExp(r'[A-Z]').hasMatch(value)) return 'Deve conter ao menos uma letra maiúscula';
    if (!RegExp(r'[!@]').hasMatch(value)) return 'Deve conter ao menos um símbolo !@';
    return null;
  }

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) return 'Email obrigatório';
    return null;
  }

  String? _confirmEmailValidator(String? value) {
    if (value == null || value.isEmpty) return 'Confirmação obrigatória';
    if (value != _emailController.text) return 'Emails não conferem';
    return null;
  }

  String? _numberValidator(String? value) {
    if (value == null || value.isEmpty) return 'Preencha este campo';
    if (int.tryParse(value) == null) return 'Digite um número válido';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SignUpDesign(
      formKey: _formKey,
      nameController: _nameController,
      emailController: _emailController,
      confirmEmailController: _confirmEmailController,
      passwordController: _passwordController,
      companyController: _companyController,
      tables2Controller: _tables2Controller,
      tables4Controller: _tables4Controller,
      tables8Controller: _tables8Controller,
      onSubmit: _signup,
      passwordValidator: _passwordValidator,
      emailValidator: _emailValidator,
      confirmEmailValidator: _confirmEmailValidator,
      numberValidator: _numberValidator, onLoginTap: () {  },
    );
  }
}
