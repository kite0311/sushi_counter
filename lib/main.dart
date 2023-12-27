import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const DishCounterPage(),
    );
  }
}

class DishCounterPage extends StatefulWidget {
  const DishCounterPage({super.key});

  @override
  State<DishCounterPage> createState() => _DishCounterPageState();
}

class _DishCounterPageState extends State<DishCounterPage> {
  @override
  Widget build(BuildContext context) {
    List countList = [];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'カウンター',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
      body: ListView.builder(
        itemCount: countList.length,
        itemBuilder: (context, index) {
          final TestList = countList[index];
          return const Column(
            children: [
              Text('テスト'),
              Text('テスト'),
              Text('テスト'),
              Text('テスト'),
            ],
          );
        },
      ),
    );
  }
}
