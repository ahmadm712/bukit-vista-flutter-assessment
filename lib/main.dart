import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/pages/pages.dart';
import 'package:test_bukit_vista/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bukit Vista',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: kColorPrimary),
      ),
      home: const HomePage(),
    );
  }
}
