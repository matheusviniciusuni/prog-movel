import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/HomePage.dart';

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.person_outline), color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.visibility_outlined), color: const Color(0xFFF5F5F5)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_rounded), color: const Color(0xFFF5F5F5)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mark_email_read_outlined), color: const Color(0xFFF5F5F5))
        ]
      ),
      body: const HomePage()
    );
  }
}