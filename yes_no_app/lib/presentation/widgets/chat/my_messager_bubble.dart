import 'package:flutter/material.dart';

class MyMessageBubbleWidget extends StatelessWidget {
  const MyMessageBubbleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text('message 1', style: TextStyle(color: Colors.white)),
          ),
        ),
        const SizedBox(height: 6),
      ],
    );
  }
}
