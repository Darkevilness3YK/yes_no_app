import 'package:flutter/material.dart';
import 'package:yes_no_app/models/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> message = [
    Message(text: '¡Hola!', fromWho: FromWho.me),
    Message(text: '¿Me das dinero?', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {}
}
