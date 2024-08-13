import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddPointButton extends StatelessWidget {
  const AddPointButton({
    super.key,
    required this.team,
    required this.points,
  });
  final String team;
  final int points;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .teamIncement(team: team, points: points);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(10)),
      child: Text('Add $points Point'),
    );
  }
}