import 'dart:async';

import 'package:booking_app/pages/Flight/bloc/flight_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

FutureOr<void> passengerCountChangeChangeEvent(
    PassengerCountChangeChangeEvent event,
    Emitter<FlightState> emit,
    dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(
      passengerCountChangeChange: event.newPassengerCount));
}

FutureOr<void> roundTripTimeChangeChangeEvent(
    RoundTripTimeChangeChangeEvent event,
    Emitter<FlightState> emit,
    dynamic state) {
  final currentState = state as FlightInitial;

  emit(
      currentState.copyWith(roundTripTimeChangeChange: event.newRoundTripTime));
}

FutureOr<void> oneWayTimeChangeChangeEvent(OneWayTimeChangeChangeEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(oneWayTimeChangeChange: event.newTime));
}

FutureOr<void> flightTypeChangeChangeEvent(FlightTypeChangeChangeEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(flightTypeChangeChange: event.newFlightType));
}

FutureOr<void> isRoundTripChangeChangeEvent(IsRoundTripChangeChangeEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(isRoundTripChangeChange: event.newIsRoundTrip));
}

FutureOr<void> takeOffLocChangeChangeEvent(TakeOffLocChangeChangeEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(takeOffLocChangeChange: event.newTakeOffLoc));
}

FutureOr<void> landingLocChangeChangeEvent(LandingLocChangeChangeEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(landingLocChangeChange: event.newLandingLoc));
}
