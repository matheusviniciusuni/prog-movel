import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagConta/Historico.dart';
import 'package:flutter_application_atvnubank/pagConta/Saldo.dart';

class MinhaConta extends StatefulWidget {
  const MinhaConta({super.key});

  @override
  State<MinhaConta> createState() => MyPerfilApp();
}

class MyPerfilApp extends State<MinhaConta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF8A05BE),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios_outlined), color: Colors.white),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.question_mark_rounded), color: const Color(0xFFF5F5F5)),
        ]
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: ListView(
          children: const [
            Saldo(),
            SizedBox(),
            Divider(height: 1),
            SizedBox(height: 35),
            Historico()
          ],
        ),
      )
    );
  }
}