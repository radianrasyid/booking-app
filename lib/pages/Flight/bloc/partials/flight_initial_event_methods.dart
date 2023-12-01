import 'dart:async';

import 'package:booking_app/pages/Flight/bloc/flight_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

FutureOr<void> passengerCountChangeEvent(
    PassengerCountChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(passengerCountChange: event.newPassengerCount));
}

FutureOr<void> roundTripTimeChangeEvent(
    RoundTripTimeChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(roundTripTimeChange: event.newRoundTripTime));
}

FutureOr<void> oneWayTimeChangeEvent(
    OneWayTimeChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(oneWayTimeChange: event.newTime));
}

FutureOr<void> flightTypeChangeEvent(
    FlightTypeChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(flightTypeChange: event.newFlightType));
}

FutureOr<void> isRoundTripChangeEvent(
    IsRoundTripChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(isRoundTripChange: event.newIsRoundTrip));
}

FutureOr<void> takeOffLocChangeEvent(
    TakeOffLocChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(takeOffLocChange: event.newTakeOffLoc));
}

FutureOr<void> landingLocChangeEvent(
    LandingLocChangeEvent event, Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(landingLocChange: event.newLandingLoc));
}

FutureOr<void> flightInitialChangeAllEvent(FlightInitialChangeAllEvent event,
    Emitter<FlightState> emit, dynamic state) {
  final currentState = state as FlightInitial;

  emit(currentState.copyWith(
    flightTypeChange: event.newFlightType,
    isRoundTripChange: event.newIsRoundTrip,
    landingLocChange: event.newLandingLoc,
    oneWayTimeChange: event.newTime,
    passengerCountChange: event.newPassengerCount,
    roundTripTimeChange: event.newRoundTripTime,
    takeOffLocChange: event.newTakeOffLoc,
  ));
}
