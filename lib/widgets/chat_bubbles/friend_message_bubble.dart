import 'package:flutter/material.dart';
import 'package:yes_no_app/widgets/chat_bubbles/image_bubble.dart';

class FriendMessageBubble extends StatelessWidget {
  const FriendMessageBubble({super.key});

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
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'Dolor sit amet',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5.0),
        const ImageBubble(),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
