// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';

import 'package:test_bukit_vista/services/main_services.dart';
import 'package:test_bukit_vista/utils/constans.dart';

part 'booking_state.dart';

class BookingCubit extends Cubit<BookingState> {
  MainServices services;
  BookingCubit(
    this.services,
  ) : super(BookingInitial());

  void getBooking() async {
    try {
      emit(BookingLoading());
      // Add Timer to simulate fetch API
      Timer(
        const Duration(seconds: 3),
        () async {
          var data = await services.readJson('${assetName}bookings.json');
          emit(BookingHasData(data: bookingsFromJson(data)));
        },
      );
    } catch (e) {
      emit(BookingError(error: e.toString()));
    }
  }
}
