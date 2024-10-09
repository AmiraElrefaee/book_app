import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_router.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicaDtion.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark).copyWith(
          scaffoldBackgroundColor: KprimayColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          )),
    );
  }
}
