import 'package:flutter/material.dart';
import 'package:flutter_application_nubank/appBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyStatefulWidget();
}

class MyStatefulWidget extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nubank",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF8A05BE),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.person_outline), color: Colors.white, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color(0xFFBA4DE3)))),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.visibility), color: Colors.white70),
            IconButton(onPressed: () {}, icon: Icon(Icons.question_mark), color: Colors.white70),
            IconButton(onPressed: () {}, icon: Icon(Icons.mark_email_read), color: Colors.white70)
          ]
        ),
        body: const appBody()
      )
    );
  }
}