import 'package:bloc/bloc.dart';
import 'package:booking_app/pages/Flight/bloc/partials/flight_change_event_methods.dart';
import 'package:booking_app/pages/Flight/bloc/partials/flight_initial_event_methods.dart';
import 'package:flutter/material.dart';

part 'flight_event.dart';
part 'flight_state.dart';

class FlightBloc extends Bloc<FlightEvent, FlightState> {
  FlightBloc()
      : super(FlightInitial(
          flightType: "Economy",
          oneWayTime: DateTime.now(),
          passengerCount: 1,
          roundTripTime:
              DateTimeRange(start: DateTime.now(), end: DateTime.now()),
          isRoundTrip: false,
          landingLoc: "Tanjungpinang, Kepulauan Riau",
          takeOffLoc: "Jakarta, DKI Jakarta",
          flightTypeChange: "Economy",
          oneWayTimeChange: DateTime.now(),
          passengerCountChange: 1,
          roundTripTimeChange:
              DateTimeRange(start: DateTime.now(), end: DateTime.now()),
          isRoundTripChange: false,
          landingLocChange: "Tanjungpinang, Kepulauan Riau",
          takeOffLocChange: "Jakarta, DKI Jakarta",
        )) {
    on<PassengerCountChangeEvent>(
        (PassengerCountChangeEvent event, Emitter<FlightState> emit) {
      passengerCountChangeEvent(event, emit, state);
    });
    on<RoundTripTimeChangeEvent>(
        (RoundTripTimeChangeEvent event, Emitter<FlightState> emit) {
      roundTripTimeChangeEvent(event, emit, state);
    });
    on<OneWayTimeChangeEvent>(
        (OneWayTimeChangeEvent event, Emitter<FlightState> emit) {
      oneWayTimeChangeEvent(event, emit, state);
    });
    on<FlightTypeChangeEvent>(
        (FlightTypeChangeEvent event, Emitter<FlightState> emit) {
      flightTypeChangeEvent(event, emit, state);
    });
    on<IsRoundTripChangeEvent>(
        (IsRoundTripChangeEvent event, Emitter<FlightState> emit) {
      isRoundTripChangeEvent(event, emit, state);
    });
    on<TakeOffLocChangeEvent>(
        (TakeOffLocChangeEvent event, Emitter<FlightState> emit) {
      takeOffLocChangeEvent(event, emit, state);
    });
    on<LandingLocChangeEvent>(
        (LandingLocChangeEvent event, Emitter<FlightState> emit) {
      landingLocChangeEvent(event, emit, state);
    });

    on<PassengerCountChangeChangeEvent>(
        (PassengerCountChangeChangeEvent event, Emitter<FlightState> emit) {
      passengerCountChangeChangeEvent(event, emit, state);
    });
    on<RoundTripTimeChangeChangeEvent>(
        (RoundTripTimeChangeChangeEvent event, Emitter<FlightState> emit) {
      roundTripTimeChangeChangeEvent(event, emit, state);
    });
    on<OneWayTimeChangeChangeEvent>(
        (OneWayTimeChangeChangeEvent event, Emitter<FlightState> emit) {
      oneWayTimeChangeChangeEvent(event, emit, state);
    });
    on<FlightTypeChangeChangeEvent>(
        (FlightTypeChangeChangeEvent event, Emitter<FlightState> emit) {
      flightTypeChangeChangeEvent(event, emit, state);
    });
    on<IsRoundTripChangeChangeEvent>(
        (IsRoundTripChangeChangeEvent event, Emitter<FlightState> emit) {
      isRoundTripChangeChangeEvent(event, emit, state);
    });
    on<TakeOffLocChangeChangeEvent>(
        (TakeOffLocChangeChangeEvent event, Emitter<FlightState> emit) {
      takeOffLocChangeChangeEvent(event, emit, state);
    });
    on<LandingLocChangeChangeEvent>(
        (LandingLocChangeChangeEvent event, Emitter<FlightState> emit) {
      landingLocChangeChangeEvent(event, emit, state);
    });
    on<FlightInitialChangeAllEvent>(
        (FlightInitialChangeAllEvent event, Emitter<FlightState> emit) {
      flightInitialChangeAllEvent(event, emit, state);
    });
  }
}
