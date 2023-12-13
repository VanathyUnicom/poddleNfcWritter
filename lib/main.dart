import 'package:flutter/material.dart';
import 'package:poddle_nfc_writer/ui/screen/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Poddle NFC Writer",
      home:Home(),
    );
  }
}