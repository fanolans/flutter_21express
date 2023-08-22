part of 'tracking_bloc.dart';

@immutable
abstract class TrackingEvent {}

class GetTrackingEvent extends TrackingEvent {
  final TrackingRequestModel model;
  GetTrackingEvent({
    required this.model,
  });
}
