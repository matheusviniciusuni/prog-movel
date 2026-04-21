import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => MyStatefulWidget();
}

class MyStatefulWidget extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Conta", style: TextStyle(fontWeight: FontWeight.bold)),
                    Icon(Icons.arrow_right)
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                child: Text("RS1000,00"),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton.filledTonal(onPressed: () {}, icon: Icon(Icons.pix_outlined), style: ButtonStyle(fixedSize: MaterialStatePropertyAll<Size>(Size.fromRadius(30)))),
                        Text("Pix")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.money)),
                        Text("Pagar")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.money)),
                        Text("Pagar Empréstimo")
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.money)),
                        Text("Transferir")
                      ],
                    )
                  ]
                ),
              ),
              Container(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
                  color: Color(0xF5F5F5),
                  child: ListTile(leading: Icon(Icons.card_giftcard), title: Text("Meus Cartões"))
                )
              ),
              Container(
                child: Row(
                  children: [
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                      color: Color(0xF5F5F5),
                      child: ListTile(leading: Icon(Icons.card_giftcard), title: Text("Novidade. Conheça a ferramn=enta de Controle de Gastos do Nubank"))
                    ),
                    Card(
                      margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                      color: Color(0xF5F5F5),
                      child: ListTile(leading: Icon(Icons.card_giftcard), title: Text("Novidade. Conheça a ferramn=enta de Controle de Gastos do Nubank"))
                    )
                  ],
                ),
              )
            ]
          ),
        ),
      ],
    );
  }
}