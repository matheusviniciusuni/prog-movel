import 'package:flutter/material.dart';

class Emprestimo extends StatefulWidget {
  const Emprestimo({super.key});

  @override
  State<Emprestimo> createState() => MyEmprestimo();
}

class MyEmprestimo extends State<Emprestimo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Empréstimo", style: TextStyle(fontSize: 24)),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        const SizedBox(height: 10),
        const Text("Tudo Certo! Você está em dia", style: TextStyle(fontSize: 18)),
        const SizedBox(height: 30),
        const Divider(height: 1),
        const SizedBox(height: 30),
        const Text("Descubra Mais", style: TextStyle(fontSize: 24)),
        Card(
          child: ListTile(
            contentPadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            title: Column(
              children: [
                Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQarSZg3a4rnM-i_5zv-J0FFArW3-GMx-myVQ&s'),
              ],
            ),
            subtitle: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text("Seguro de Vida", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: Text("Cuide bem de quem você ama de um jeito simples", style: TextStyle(fontSize: 18, color: Colors.black54)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
                    child: ElevatedButton(onPressed: () {}, style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color(0xFF8A05BE)),), child: const Text("Conhecer", style: TextStyle(color: Colors.white),)),
                  )
                ],
              ),
            )
          ),
        )
      ],
    );
  }
}