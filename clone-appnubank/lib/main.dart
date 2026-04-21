import 'package:flutter/material.dart';
import 'package:flutter_application_atvnubank/pagConta/MinhaConta.dart';
import 'package:flutter_application_atvnubank/pagPrincipal/AppBody.dart';

import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const keyApplicationId = '4MFaZJXEqrvNVHETj945bfA880DqKGunLDyIiW0T';
  const keyClientKey = '6C425wQELGS0iP1BF4wmZHI2ePAaANMQp3dluue8';
  const keyParseServerUrl = 'https://parseapi.back4app.com';
  await Parse().initialize(
    keyApplicationId,
    keyParseServerUrl,
    clientKey: keyClientKey, debug: true
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const AppBody(),
        '/conta': (context) => const MinhaConta()
      },
    );
  }
}
