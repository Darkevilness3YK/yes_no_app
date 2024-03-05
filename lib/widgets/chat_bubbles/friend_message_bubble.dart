import 'package:flutter/material.dart';
import 'package:yes_no_app/classes/message_class.dart';
import 'package:yes_no_app/widgets/chat_bubbles/image_bubble.dart';

class FriendMessageBubble extends StatelessWidget {
  final Message message;

  const FriendMessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            // Secondary color is automatically assigned by Flutter taking as reference the color scheme we especify in AppTheme widget (theme property in main.dart).
            color: colorScheme.secondary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        ImageBubble(
            imageUrl: message.imageUrl ??
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE3CETL_OertJKScoHfblxs6CBrKGVCmVESw'),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
