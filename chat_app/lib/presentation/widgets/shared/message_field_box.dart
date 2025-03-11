import 'package:flutter/material.dart';

class MessageBoxFieldBox extends StatelessWidget {
  const MessageBoxFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        suffixIcon: const Icon(Icons.send_outlined),
      ),
    );
  }
}
