import 'package:book_application/core/utils/api_service.dart';
import 'package:book_application/core/utils/service_locator.dart';
import 'package:book_application/core/utils/simple_bloc_observer.dart';
import 'package:book_application/features/home/domain/use_case/fetch_feature_books_useCase.dart';
import 'package:book_application/features/home/domain/use_case/fetch_newest_books_useCase.dart';
import 'package:book_application/features/home/presentation/views/data/repos/home_repo_imple.dart';
import 'package:book_application/features/search/presentation/manager/searches_cubit/searched_item_cubit.dart';
import 'package:book_application/features/search/presentation/view/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'constant.dart';
import 'core/utils/app_router.dart';
import 'features/home/data/repos/home_repo_imple.dart';
import 'features/home/domain/entities/book_entity.dart';
import 'features/home/presentation/manager/feature_cubit/feature_book_cubit.dart';
import 'features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'features/search/presentation/view/data/repos/repo_imple.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBooks);
  await Hive.openBox<BookEntity>(kSimilarBox);
  setupSErviceLocator();
  Bloc.observer=SimpleBlocObesrver();
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
          create: (context) => FeatureBookCubit(
            fetchFeatureBooksUseCase(getIt.get<HomeRepoImple2>()),
          )..FetchFeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FetchNewestBooksUseCase(getIt.get<HomeRepoImple2>())
          )..FetchNewestBooks(),
        ),
        //     BlocProvider(
        //       create: (context) =>
        // SearchedItemCubit(getIt.get<HomeRepoImple>(),)..fetchNewestBooks())
        // SearchedItemCubit(getIt.get<RepoImple>()),)
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
