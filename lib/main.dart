import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/pages/currency_converter_material_page.dart';
import 'package:currency_converter/pages/currency_conveerter_cupertino_page.dart';
// package::[currency_converter]/-> the name of project
// pubspec.yaml -> name

// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

// Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget

// 1. Material Design -> Google
// 2. Cupertino Design -> Apple

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Text(
    //   "Hello world!!!",
    //   textDirection: TextDirection.rtl,
    // );
    return const MaterialApp(home: CurrencyConverterMaterialPage());
    // return CupertinoApp();
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinoPage(),
    );
  }
}
