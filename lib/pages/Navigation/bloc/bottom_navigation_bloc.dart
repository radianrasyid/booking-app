import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial(indexedTab: 0)) {
    on<BottomNavigationChange>(bottomNavigationTabChange);
  }

  FutureOr<void> bottomNavigationTabChange(
      BottomNavigationChange event, Emitter<BottomNavigationState> emit) {
    final currentState = state as BottomNavigationInitial;

    emit(currentState.copyWith(indexTab: event.newIndex));
  }
}
