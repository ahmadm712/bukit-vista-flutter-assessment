import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bukit_vista/services/main_services.dart';
import 'package:test_bukit_vista/ui/cubit/booking/booking_cubit.dart';
import 'package:test_bukit_vista/ui/pages/pages.dart';
import 'package:test_bukit_vista/utils/routes.dart';
import 'package:test_bukit_vista/utils/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MainServices mainServices = MainServices();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookingCubit(mainServices),
        )
      ],
      child: MaterialApp(
        title: 'Bukit Vista',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: kColorPrimary),
        ),
        home: const HomePage(),
        onGenerateRoute: mainRoutes,
      ),
    );
  }
}
