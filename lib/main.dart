import 'package:flutter/material.dart';
import 'package:myapp/screens/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  // Removed unnecessary super.key
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
