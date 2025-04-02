import 'package:basketball_couter_app/state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());
  int teamA = 0;
  int teamB = 0;
  void getCount(String team, int number) {
    if (team == 'A') {
      teamA += number;
      emit(CounterTeamAState());
    } else if (team == 'B') {
      teamB += number;
      emit(CounterTeamBState());
    } else {
      teamA = 0;
      emit(CounterTeamAState());

      teamB = 0;
      emit(CounterTeamBState());
    }
  }
}
