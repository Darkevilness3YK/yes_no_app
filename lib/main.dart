import 'package:flutter/material.dart';
import 'package:yes_no_app/config/app.theme.dart';
import 'package:yes_no_app/view/chat_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme(selectedColor: 6).setTheme(),
      home: const ChatView(),
    );
  }
}
