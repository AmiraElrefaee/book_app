import 'package:book_application/core/utils/api_service.dart';
import 'package:book_application/core/utils/service_locator.dart';
import 'package:book_application/features/home/presentation/views/data/repos/home_repo_imple.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'constant.dart';
import 'core/utils/app_router.dart';
import 'features/home/presentation/manager/feature_cubit/feature_book_cubit.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';


void main() {
  setupSErviceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your applicaDtion.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeatureBookCubit(getIt.get<HomeRepoImple>(),)..FetchFeatureBooks(),),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImple>()),),


    ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark).copyWith(
            scaffoldBackgroundColor: KprimayColor,
            textTheme: GoogleFonts.montserratTextTheme(
              ThemeData.dark().textTheme,
            )),
      ),
    );
  }
}
