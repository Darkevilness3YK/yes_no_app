import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chat_area.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://pbs.twimg.com/profile_images/994592419705274369/RLplF55e_400x400.jpg',
            ),
          ),
        ),
        title: const Text('MrBeast 🤑😎💸'),
      ),
      body: const ChatArea(),
    );
  }
}
