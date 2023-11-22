import 'package:booking_app/pages/Flight/ui/flight_main_page.dart';
import 'package:booking_app/pages/Home/bloc/home_bloc.dart';
import 'package:booking_app/pages/Navigation/bloc/bottom_navigation_bloc.dart';
import 'package:booking_app/pages/Navigation/bottom_navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc(),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => BottomNavigationBloc(),
            lazy: false,
          )
        ],
        child: ScreenUtilInit(
          builder: (context, child) {
            return MaterialApp(
              title: 'Flutter Demo',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: GoogleFonts.inter().fontFamily,
              ),
              routes: {
                '/': (context) => const BottomNavigationPage(),
                '/flight': (context) => FligthPage(),
              },
            );
          },
        ));
  }
}
