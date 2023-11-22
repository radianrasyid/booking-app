import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'flight_event.dart';
part 'flight_state.dart';

class FlightBloc extends Bloc<FlightEvent, FlightState> {
  FlightBloc() : super(FlightInitial()) {
    on<FlightEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
