import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(40.0),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          print('Message box message.');
        },
        icon: const Icon(Icons.send_outlined),
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onChanged: (value) {
        print('Current message: $value');
      },
      onFieldSubmitted: (value) {
        print('Message submitted: $value');
      },
    );
  }
}
