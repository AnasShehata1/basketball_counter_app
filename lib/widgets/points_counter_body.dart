import 'package:basketball_points_counter/widgets/reset_points_button.dart';
import 'package:basketball_points_counter/widgets/team_column.dart';
import 'package:flutter/material.dart';

class PointsCounterBody extends StatelessWidget {
  const PointsCounterBody({
    super.key,
    required this.teamAPoints,
    required this.teamBPoints,
  });

  final int teamAPoints;
  final int teamBPoints;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamColumn(team: 'A', teamPoints: teamAPoints),
            const SizedBox(
              height: 350,
              child: VerticalDivider(
                color: Colors.grey,
                thickness: 1,
                indent: 10,
              ),
            ),
            TeamColumn(team: 'B', teamPoints: teamBPoints),
          ],
        ),
        const Spacer(
          flex: 5,
        ),
        const ResetPointsButton(),
        const Spacer(
          flex: 8,
        ),
      ],
    );
  }
}
