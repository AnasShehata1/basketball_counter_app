import 'package:basketball_points_counter/cubits/counter_cubit.dart';
import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:basketball_points_counter/widgets/points_counter_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        int teamAPoints = BlocProvider.of<CounterCubit>(context).teamAPoints;
        int teamBPoints = BlocProvider.of<CounterCubit>(context).teamBPoints;
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
          body: PointsCounterBody(teamAPoints: teamAPoints, teamBPoints: teamBPoints),
        );
      },
    );
  }
}
