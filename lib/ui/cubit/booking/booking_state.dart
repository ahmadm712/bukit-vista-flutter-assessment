// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
part of 'booking_cubit.dart';

abstract class BookingState extends Equatable {
  const BookingState();

  @override
  List<Object> get props => [];
}

class BookingInitial extends BookingState {}

class BookingHasData extends BookingState {
  BookingsModel data;
  BookingHasData({
    required this.data,
  });

  @override
  List<Object> get props => [data];
}

class BookingError extends BookingState {
  String error;
  BookingError({
    required this.error,
  });

  @override
  List<Object> get props => [error];
}

class BookingLoading extends BookingState {}
