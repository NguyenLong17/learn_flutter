import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitState());

  int counter = 0;

  void inCrease() {
    counter = counter + 1;
    print('add');
    emit(CounterState());
  }

  void deCrease() {
    counter = counter - 1;
    print('remove');
    emit(CounterState());
  }
}

class CounterState {}

class CounterInitState extends CounterState {}
