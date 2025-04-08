import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/presentation/providers/chat/chat_provider.dart';

class MessageFieldBoxWidget extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MessageFieldBoxWidget({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final messageController = TextEditingController();

    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: BorderSide(color: Colors.transparent),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End message with "??"',
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        onPressed: () {
          final textValue = messageController.value.text;

          messageController.clear();

          onValue(textValue);
        },
        icon: Icon(Icons.send_outlined),
      ),
      filled: true,
    );

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: TextFormField(
        controller: messageController,
        decoration: inputDecoration,
        onFieldSubmitted: (value) {
          messageController.clear();

          onValue(value);
        },
      ),
    );
  }
}
