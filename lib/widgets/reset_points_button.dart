
import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPointsButton extends StatelessWidget {
  const ResetPointsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CounterCubit>(context).teamPointerReset();
        BlocProvider.of<CounterCubit>(context)
            .teamIncement(team: 'A', points: 0);
        BlocProvider.of<CounterCubit>(context)
            .teamIncement(team: 'B', points: 0);
      },
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 10)),
      child: const Text('Reset'),
    );
  }
}
