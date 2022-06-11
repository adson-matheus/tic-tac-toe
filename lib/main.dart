import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const GridViewRow(),
    );
  }
}

class GridViewRow extends StatefulWidget {
  const GridViewRow({Key? key}) : super(key: key);

  @override
  State<GridViewRow> createState() => _GridViewRowState();
}

class _GridViewRowState extends State<GridViewRow> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 3,
      children: const <Widget>[
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
        StyledButtonWithX(),
      ],
    );
  }
}

class StyledButtonWithX extends StatefulWidget {
  const StyledButtonWithX({Key? key}) : super(key: key);

  @override
  State<StyledButtonWithX> createState() => StyledButtonWithXState();
}

class StyledButtonWithXState extends State<StyledButtonWithX> {
  String _val = '';

  void _addX() {
    setState(() {
      _val = "X";
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
      onPressed: () {
        _addX();
      },
      child: Text(
        _val,
        style: const TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
