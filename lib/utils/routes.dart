import 'package:flutter/material.dart';
import 'package:test_bukit_vista/data/models/bookings_models.dart';
import 'package:test_bukit_vista/ui/pages/detail_booking.dart';

var mainRoutes = (RouteSettings settings) {
  switch (settings.name) {
    case DetailBookingPage.routeName:
      var data = settings.arguments as Booking;
      return MaterialPageRoute(
        builder: (context) => DetailBookingPage(booking: data),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('NO PAGE FOUND :('),
          ),
        ),
      );
  }
};
