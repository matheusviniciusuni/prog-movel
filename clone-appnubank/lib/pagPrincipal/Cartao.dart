import 'package:flutter/material.dart';

class Cartao extends StatefulWidget {
  const Cartao({super.key});

  @override
  State<Cartao> createState() => MyCartao();
}

class MyCartao extends State<Cartao> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Cartão de Crédito", style: TextStyle(fontSize: 24)),
            Icon(Icons.arrow_forward_ios_outlined)
          ],
        ),
        const SizedBox(height: 10),
        const Text("Fatura Fechada", style: TextStyle(fontSize: 18, color: Colors.black54)),
        const SizedBox(height: 10),
        const Text("R\$2170,68", style: TextStyle(fontSize: 24)),
        const SizedBox(height: 15),
        const Text("Vencimento dia 15", style: TextStyle(fontSize: 18, color: Colors.black54)),
        const SizedBox(height: 15),
        ElevatedButton(onPressed: () {}, child: const Text("Renegociar", style: TextStyle(fontSize: 18, color: Colors.black)))
      ],
    );
  }
}