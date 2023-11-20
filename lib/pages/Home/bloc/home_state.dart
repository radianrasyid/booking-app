part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {
  final int currentTab;

  HomeInitial({required this.currentTab});

  HomeInitial copyWith({int? changeTab}) {
    return HomeInitial(currentTab: changeTab ?? currentTab);
  }
}
