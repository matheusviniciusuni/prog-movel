import 'package:flutter/material.dart';

class Saldo extends StatefulWidget {
  const Saldo({super.key});

  @override
  State<Saldo> createState() => MySaldo();
}

class MySaldo extends State<Saldo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              title: Text("Saldo Disponível"),
              subtitle: Text("R\$19.503,23"),
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              title: Text("Saldo Separado"),
              subtitle: Text("R\$17.544,89"),
              leading: Icon(Icons.wallet_rounded),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              title: Text("Gastos Previstos"),
              subtitle: Text("R\$298,88"),
              leading: Icon(Icons.monitor_heart_outlined),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: ListTile(
              title: Text("Meus Investimentos"),
              subtitle: Text("Organize e conquiste objetivos"),
              leading: Icon(Icons.attach_money_rounded),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 150,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  botoesOp(Icons.move_down_rounded, "Depositar"),
                  botoesOp(Icons.payment_outlined, "Pagar"),
                  //botoesOp(Icons.replay_outlined, "Débito Automático"),
                  Column(children: [
                    IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.replay_outlined), style: const ButtonStyle(fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(40)))),
                    const Text("Débito Automático", overflow: TextOverflow.clip, textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                  ],),
                  botoesOp(Icons.handshake_outlined, "Empréstimo"),
                  botoesOp(Icons.wallet_rounded, "Investir"),
                  botoesOp(Icons.savings, "Poupança"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget botoesOp(IconData icon, String text) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Column(
      children: [
        IconButton.filledTonal(onPressed: () {}, icon: Icon(icon), style: ButtonStyle(fixedSize: WidgetStatePropertyAll<Size>(Size.fromRadius(40)))),
        Text(text, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
      ],
    ),
  );
}