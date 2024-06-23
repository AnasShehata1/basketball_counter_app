import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());

  int teamApoints = 0;
  int teamBpoints = 0;
  void TeamIncement({required String team, required int points}) {
    if (team == 'A') {
      teamApoints += points;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += points;
      emit(CounterBIncrementState());
    }
  }
}
