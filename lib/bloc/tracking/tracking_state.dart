part of 'tracking_bloc.dart';

@immutable
sealed class TrackingState {}

class TrackingInitial extends TrackingState {}

class TrackingLoading extends TrackingState {}

class TrackingLoaded extends TrackingState {
  final List<ResiInfo> data;
  TrackingLoaded({
    required this.data,
  });
}

class TrackingError extends TrackingState {
  final String message;
  TrackingError({
    required this.message,
  });
}
