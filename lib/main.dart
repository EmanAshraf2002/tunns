import 'package:flutter/material.dart';
import 'package:tuns_app/Screens/Tuns_page.dart';

void main() {
  runApp(const TunsApp());
}

class TunsApp extends StatelessWidget {
  const TunsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TunesPage(),
    );
  }
}

