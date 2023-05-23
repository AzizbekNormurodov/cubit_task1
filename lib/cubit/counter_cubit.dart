import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increment() => emit(state.copyWith(count: state.count+1));
  void decrement() => emit(state.copyWith(count: state.count-1));

}
class CounterState  {
  final int count ;
  CounterState(this.count);
  CounterState copyWith({int ? count}) => CounterState(count ?? this.count);

}