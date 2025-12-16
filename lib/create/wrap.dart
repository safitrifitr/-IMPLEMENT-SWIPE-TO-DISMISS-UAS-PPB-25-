import 'package:flutter/material.dart';

class WrapItem extends StatelessWidget {
  final String item;
  final VoidCallback onDismissed;

  const WrapItem({super.key, required this.item, required this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(item),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      onDismissed: (direction) {
        onDismissed();

        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$item dismissed')));
      },
      child: ListTile(title: Text(item)),
    );
  }
}
