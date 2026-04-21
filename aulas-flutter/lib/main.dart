import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exemplo de Drawer"),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Icon(Icons.person, size: 50),
                ),
                accountName: const Text("Fulano"), 
                accountEmail: const Text("fulano@gmail.com"),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {
                  print("home");
                },
              ),
            ],
          ),
        ),
        body: const Center(
          child: Text("Conteúdo Principal"),
        ),
      ),
    );
  }
}
