import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  const ImageBubble({super.key});

  // Yes image: https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif
  // No image: https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        'https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif',
        width: deviceSize.width * 0.7,
        height: 150.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
