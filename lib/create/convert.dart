import 'package:flutter/material.dart';
import 'wrap.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  final List<String> items = ['Satu', 'Dua', 'Tiga', 'Empat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Builder')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return WrapItem(
            item: items[index],
            onDismissed: () {
              setState(() {
                items.removeAt(index);
              });
            },
          );
        },
      ),
    );
  }
}
