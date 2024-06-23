import 'package:flutter/material.dart';

import 'Screens/home_page.dart';

void main() {
  runApp( BasketballApp());
}

class BasketballApp extends StatelessWidget {
  const BasketballApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
