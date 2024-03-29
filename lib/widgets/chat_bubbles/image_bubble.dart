import 'package:flutter/material.dart';

class ImageBubble extends StatelessWidget {
  final String imageUrl;

  const ImageBubble({
    super.key,
    required this.imageUrl,
  });

  // Without API images:
  // Yes image: https://yesno.wtf/assets/yes/14-b57c6dc03aa15a4b18f53eb50d6197ee.gif
  // No image: https://yesno.wtf/assets/no/23-5fe6c1ca6c78e7bf9a7cf43e406fb8db.gif
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.network(
        imageUrl,
        width: deviceSize.width * 0.7,
        height: 150.0,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: deviceSize.width * 0.7,
            height: 150.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
