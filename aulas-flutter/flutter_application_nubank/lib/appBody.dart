import 'package:flutter/material.dart';
import 'package:flutter_application_nubank/homePage.dart';

class appBody extends StatelessWidget {
  const appBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ListView(
        children: const [HomePage()]
      ),
    );
  }
}