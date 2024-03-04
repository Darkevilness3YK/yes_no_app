import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/message_bubble.dart';

class ChatArea extends StatelessWidget {
  const ChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            const Text('Hola'),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MessageBubble();
                },
              ),
            ),
            const Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
