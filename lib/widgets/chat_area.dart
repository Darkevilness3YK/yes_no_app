import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chat_bubbles/friend_message_bubble.dart';
import 'package:yes_no_app/widgets/chat_bubbles/my_message_bubble.dart';

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
                  return (index % 2 == 0) ? const FriendMessageBubble() : const MyMessageBubble();
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
