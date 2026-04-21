import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/Cartao.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/Conta.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/Emprestimo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => MyHomePageApp();
}

class MyHomePageApp extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: ListView(
        children: const [
          Conta(),
          SizedBox(height: 30),
          Divider(height: 1),
          SizedBox(height: 30),
          Cartao(),
          SizedBox(height: 30),
          Divider(height: 1),
          SizedBox(height: 30),
          Emprestimo()
        ],
      ),
    );
  }
}