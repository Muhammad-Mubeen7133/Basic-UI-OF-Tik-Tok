import 'package:flutter/material.dart';
import 'package:ludo/Tik_tok_main/tik_tok_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Tik_Tok_Mian_Page(),
    );
  }
}