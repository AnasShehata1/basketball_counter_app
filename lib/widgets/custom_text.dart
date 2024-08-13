
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.team,
  });
  final String team;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Team $team',
      style: const TextStyle(color: Colors.black, fontSize: 28),
    );
  }
}
