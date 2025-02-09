import 'package:flutter/material.dart';
import 'package:flutter_codigo_setstate/Pages/home_page.dart';
import 'package:flutter_codigo_setstate/pages/general_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SetStateApp',
      home: StatusGeneralPage(),
    );
  }
}
