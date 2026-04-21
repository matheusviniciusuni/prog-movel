import 'package:flutter/material.dart';

class Conta extends StatefulWidget {
  const Conta({super.key});

  @override
  State<Conta> createState() => MyConta();
}

class MyConta extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/conta');
          },
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Conta", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Icon(Icons.arrow_forward_ios_outlined)
                ],
              ),
              SizedBox(height: 10),
              Text("R\$1233,80", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold))
            ],
          )
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            botoesConta(Icons.pix, "Área Pix"),
            botoesConta(Icons.money, "Pagamentos"),
            botoesConta(Icons.qr_code, "QRcode"),
            botoesConta(Icons.attach_money, "Transferir")
          ]
        ),
        const SizedBox(height: 30),
        const Card(
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: Icon(Icons.card_giftcard),
            title: Text("Meus Cartões", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(height: 30),
        const Card(
          child: ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text("Guarde o seu dinheiro em caixinhas", style: TextStyle(color: Color(0xFF8A05BE), fontWeight: FontWeight.bold)),
            subtitle: Text("Acessando a área de planejamento"),
          ),
        )
      ],
    );
  }
}

Widget botoesConta(IconData icon, String text) {
  return Column(
    children: [
      IconButton.filledTonal(onPressed: () {}, icon: Icon(icon), padding: const EdgeInsets.all(25)),
      Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
    ],
  );
}