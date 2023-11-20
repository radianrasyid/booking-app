part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationEvent {}

class BottomNavigationChange extends BottomNavigationEvent {
  final int newIndex;

  BottomNavigationChange({this.newIndex = 0});
}
