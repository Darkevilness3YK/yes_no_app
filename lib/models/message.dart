enum FromWho {
  mine,
  friend,
}

class Message {
  final String text;
  final String? imageUrl;
  final bool fromWho;

  Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
