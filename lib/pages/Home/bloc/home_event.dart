part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeTabChange extends HomeEvent {
  final int newTab;

  HomeTabChange({this.newTab = 0});
}
