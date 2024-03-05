import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  final String messageText;

  const MyMessageBubble({
    super.key,
    required this.messageText,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            // Primary color is automatically assigned by Flutter taking as reference the color scheme we especify in AppTheme widget (theme property in main.dart).
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              messageText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 10.0),
      ],
    );
  }
}
