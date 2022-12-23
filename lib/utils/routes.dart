import 'package:flutter/material.dart';
import 'package:test_bukit_vista/ui/pages/detail_booking.dart';

var mainRoutes = (RouteSettings settings) {
  switch (settings.name) {
    case DetailBookingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => const DetailBookingPage(),
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
