import 'package:flutter/material.dart';

import 'view/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Jogo da Velha'),
    );
  }
}

