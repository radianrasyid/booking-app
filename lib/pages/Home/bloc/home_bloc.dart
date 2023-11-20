import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial(currentTab: 0)) {
    on<HomeTabChange>(homeTabChange);
  }

  FutureOr<void> homeTabChange(HomeTabChange event, Emitter<HomeState> emit) {
    final currentState = state as HomeInitial;

    emit(currentState.copyWith(changeTab: event.newTab));
  }
}
