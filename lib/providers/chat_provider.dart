import 'package:flutter/material.dart';
import 'package:yes_no_app/models/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();

  List<Message> messageList = [
    Message(text: '¡Hola!', fromWho: FromWho.me),
    Message(text: '¿Me das dinero?', fromWho: FromWho.me),
    Message(text: 'No', fromWho: FromWho.friend),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final myNewMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(myNewMessage);

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    // The idea is have a very little waiting time to make the app save the sent message to messageList before doing the animation. Without this delay, the animation may happen before the message was added to messageList; in consequence, animation may not happen correctly.
    await Future.delayed(const Duration(milliseconds: 10));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
    );
  }
}
