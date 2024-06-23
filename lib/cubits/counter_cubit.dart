import 'package:basketball_points_counter/cubits/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(InitialState());

  int teamAPoints = 0;
  int teamBPoints = 0;
  void teamIncement({required String team, required int points}) {
    if (team == 'A') {
      teamAPoints += points;
      emit(CounterAIncrementState());
    } else {
      teamBPoints += points;
      emit(CounterBIncrementState());
    }
  }

  void teamPointerReset() {
    teamAPoints = 0;
    teamBPoints = 0;
  }
}
