import 'package:flutter/material.dart';
import 'package:flutter_application_telalogin/homePage/tabHome.dart';
import 'package:flutter_application_telalogin/homePage/tabList.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.baby_changing_station),
                text: "Adicionar Produtos",
              )
            ]
          ),
          centerTitle: true,
          title: const Text("Compra Fácil",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue
        ),
        body: const TabBarView(
          children: [
            tabHome(),
            tabList()
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.face),label: "Face"),
          BottomNavigationBarItem(icon: Icon(Icons.telegram), label: "Telegram")
        ]),
      )
    );
  }
}