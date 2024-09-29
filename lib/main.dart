import 'package:flutter/material.dart';
import 'detail/Detailpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}

// Custom AppBar Widget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  CustomAppBar({Key? key})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Learn Flutter',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF000000),
        ),
      ),
      backgroundColor:
          const Color(0x01FFFFFF), // Make it transparent
      elevation: 0, // Remove shadow
    );
  }
}
