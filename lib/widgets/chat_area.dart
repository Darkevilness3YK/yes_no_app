import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/models/message.dart';
import 'package:yes_no_app/providers/chat_provider.dart';
import 'package:yes_no_app/widgets/chat_bubbles/friend_message_bubble.dart';
import 'package:yes_no_app/widgets/chat_bubbles/my_message_bubble.dart';
import 'package:yes_no_app/widgets/shared/message_field_box.dart';

class ChatArea extends StatelessWidget {
  const ChatArea({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chatProvider.messageList.length,
                itemBuilder: (context, index) {
                  final message = chatProvider.messageList[index];
                  return (message.fromWho == FromWho.friend)
                      ? FriendMessageBubble(messageText: message.text)
                      : MyMessageBubble(messageText: message.text);
                },
              ),
            ),
            MessageFieldBox(
              // The commented line is the equivalent of the uncommented line. Although, commented line is redundant.
              // onValue: (value) => chatProvider.sendMessage(value),
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
