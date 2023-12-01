part of 'flight_bloc.dart';

@immutable
sealed class FlightState {}

final class FlightInitial extends FlightState {
  final int passengerCount;
  final String flightType;
  final DateTime oneWayTime;
  final DateTimeRange roundTripTime;
  final bool isRoundTrip;
  final String takeOffLoc;
  final String landingLoc;

  final int passengerCountChange;
  final String flightTypeChange;
  final DateTime oneWayTimeChange;
  final DateTimeRange roundTripTimeChange;
  final bool isRoundTripChange;
  final String takeOffLocChange;
  final String landingLocChange;

  FlightInitial({
    required this.passengerCount,
    required this.flightType,
    required this.oneWayTime,
    required this.roundTripTime,
    required this.isRoundTrip,
    required this.landingLoc,
    required this.takeOffLoc,
    required this.passengerCountChange,
    required this.flightTypeChange,
    required this.oneWayTimeChange,
    required this.roundTripTimeChange,
    required this.isRoundTripChange,
    required this.landingLocChange,
    required this.takeOffLocChange,
  });

  FlightInitial copyWith({
    int? passengerCountChange,
    String? flightTypeChange,
    DateTime? oneWayTimeChange,
    DateTimeRange? roundTripTimeChange,
    bool? isRoundTripChange,
    String? takeOffLocChange,
    String? landingLocChange,
    int? passengerCountChangeChange,
    String? flightTypeChangeChange,
    DateTime? oneWayTimeChangeChange,
    DateTimeRange? roundTripTimeChangeChange,
    bool? isRoundTripChangeChange,
    String? takeOffLocChangeChange,
    String? landingLocChangeChange,
  }) {
    return FlightInitial(
      passengerCount: passengerCountChange ?? this.passengerCount,
      flightType: flightTypeChange ?? this.flightType,
      oneWayTime: oneWayTimeChange ?? this.oneWayTime,
      roundTripTime: roundTripTimeChange ?? this.roundTripTime,
      landingLoc: landingLocChange ?? this.landingLoc,
      takeOffLoc: takeOffLocChange ?? this.takeOffLoc,
      isRoundTrip: isRoundTripChange ?? this.isRoundTrip,
      flightTypeChange: flightTypeChangeChange ?? this.flightTypeChange,
      isRoundTripChange: isRoundTripChangeChange ?? this.isRoundTripChange,
      landingLocChange: landingLocChangeChange ?? this.landingLocChange,
      oneWayTimeChange: oneWayTimeChangeChange ?? this.oneWayTimeChange,
      passengerCountChange:
          passengerCountChangeChange ?? this.passengerCountChange,
      roundTripTimeChange:
          roundTripTimeChangeChange ?? this.roundTripTimeChange,
      takeOffLocChange: takeOffLocChangeChange ?? this.takeOffLocChange,
    );
  }
}
