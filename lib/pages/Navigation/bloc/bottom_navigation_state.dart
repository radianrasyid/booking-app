part of 'bottom_navigation_bloc.dart';

@immutable
sealed class BottomNavigationState {}

final class BottomNavigationInitial extends BottomNavigationState {
  final int indexedTab;

  BottomNavigationInitial({required this.indexedTab});

  BottomNavigationInitial copyWith({int? indexTab}) {
    return BottomNavigationInitial(indexedTab: indexTab ?? indexedTab);
  }
}
