import 'package:flutter/material.dart';


class tabHome extends StatelessWidget {
  const tabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Center(
            child: Text("Promoções do Dia",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic
            )),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            color: Colors.white60,
            child: ListTile(
              leading: Image(image: AssetImage('images/ip.jpeg')),
              title: Text("Detergente"),
              subtitle: Text("R\$ 9,00"),
            )
          ),
        ],
      )
    );
  }
}