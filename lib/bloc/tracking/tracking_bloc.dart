import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_21express/data/models/tracking_request_model.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import 'package:flutter_21express/data/models/tracking_response_model.dart';

import '../../data/api/api_service.dart';

part 'tracking_event.dart';
part 'tracking_state.dart';

class TrackingBloc extends Bloc<TrackingEvent, TrackingState> {
  final ApiService apiService;
  TrackingBloc(
    this.apiService,
  ) : super(TrackingInitial()) {
    on<GetTrackingEvent>((event, emit) async {
      emit(TrackingLoading());
      final result = await ApiService().getTrackingInfo(event.model as String);
      result.fold(
        (error) => emit(
          TrackingError(message: error),
        ),
        (data) => emit(
          TrackingLoaded(data: data),
        ),
      );
    });
  }
}
