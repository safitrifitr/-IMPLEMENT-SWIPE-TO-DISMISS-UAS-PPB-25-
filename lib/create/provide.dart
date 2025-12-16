import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyPage());
  }
}

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<String> items = ['Satu', 'Dua', 'Tiga'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(items[index]));
        },
      ),
    );
  }
}
