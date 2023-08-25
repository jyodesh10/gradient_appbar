import 'package:flutter/material.dart';
import 'package:gradient_appbar/gradient_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: GradientAppbar(
        title: const Text("Title"), 
        gradientColors: const [Colors.blue, Colors.teal], 
        stops: const [0.3, 0.6],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.filter)),
        elevation: 10,
        shadowColor: Colors.purple,
        borderRadius: BorderRadius.circular(20),
        centerTitle: true,
      )
    );
  }
}
