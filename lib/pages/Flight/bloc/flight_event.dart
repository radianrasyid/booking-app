part of 'flight_bloc.dart';

@immutable
sealed class FlightEvent {}

class OneWayTimeChangeEvent extends FlightEvent {
  final DateTime newTime;

  OneWayTimeChangeEvent({required this.newTime});
}

class RoundTripTimeChangeEvent extends FlightEvent {
  final DateTimeRange newRoundTripTime;

  RoundTripTimeChangeEvent({required this.newRoundTripTime});
}

class PassengerCountChangeEvent extends FlightEvent {
  final int newPassengerCount;

  PassengerCountChangeEvent({required this.newPassengerCount});
}

class FlightTypeChangeEvent extends FlightEvent {
  final String newFlightType;

  FlightTypeChangeEvent({required this.newFlightType});
}

class IsRoundTripChangeEvent extends FlightEvent {
  final bool newIsRoundTrip;

  IsRoundTripChangeEvent({required this.newIsRoundTrip});
}

class TakeOffLocChangeEvent extends FlightEvent {
  final String newTakeOffLoc;

  TakeOffLocChangeEvent({required this.newTakeOffLoc});
}

class LandingLocChangeEvent extends FlightEvent {
  final String newLandingLoc;

  LandingLocChangeEvent({required this.newLandingLoc});
}

class FlightInitialChangeAllEvent extends FlightEvent {
  final DateTime newTime;
  final DateTimeRange newRoundTripTime;
  final int newPassengerCount;
  final String newFlightType;
  final bool newIsRoundTrip;
  final String newTakeOffLoc;
  final String newLandingLoc;

  FlightInitialChangeAllEvent({
    required this.newFlightType,
    required this.newIsRoundTrip,
    required this.newLandingLoc,
    required this.newPassengerCount,
    required this.newRoundTripTime,
    required this.newTakeOffLoc,
    required this.newTime,
  });
}

class OneWayTimeChangeChangeEvent extends FlightEvent {
  final DateTime newTime;

  OneWayTimeChangeChangeEvent({required this.newTime});
}

class RoundTripTimeChangeChangeEvent extends FlightEvent {
  final DateTimeRange newRoundTripTime;

  RoundTripTimeChangeChangeEvent({required this.newRoundTripTime});
}

class PassengerCountChangeChangeEvent extends FlightEvent {
  final int newPassengerCount;

  PassengerCountChangeChangeEvent({required this.newPassengerCount});
}

class FlightTypeChangeChangeEvent extends FlightEvent {
  final String newFlightType;

  FlightTypeChangeChangeEvent({required this.newFlightType});
}

class IsRoundTripChangeChangeEvent extends FlightEvent {
  final bool newIsRoundTrip;

  IsRoundTripChangeChangeEvent({required this.newIsRoundTrip});
}

class TakeOffLocChangeChangeEvent extends FlightEvent {
  final String newTakeOffLoc;

  TakeOffLocChangeChangeEvent({required this.newTakeOffLoc});
}

class LandingLocChangeChangeEvent extends FlightEvent {
  final String newLandingLoc;

  LandingLocChangeChangeEvent({required this.newLandingLoc});
}
