
import 'package:basketball_points_counter/widgets/add_point_button.dart';
import 'package:basketball_points_counter/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class TeamColumn extends StatelessWidget {
  const TeamColumn({
    super.key,
    required this.teamPoints,
    required this.team,
  });

  final int teamPoints;
  final String team;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(team: team),
        Text(
          '$teamPoints',
          style: const TextStyle(color: Colors.black, fontSize: 48),
        ),
        const SizedBox(height: 30),
        AddPointButton(team: team, points: 1),
        const SizedBox(height: 30),
        AddPointButton(team: team, points: 2),
        const SizedBox(height: 30),
        AddPointButton(team: team, points: 3)
      ],
    );
  }
}
