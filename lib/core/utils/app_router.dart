import 'package:book_application/core/utils/service_locator.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:book_application/features/home/presentation/views/data/repos/home_repo_imple.dart';
import 'package:book_application/features/home/presentation/views/home_view.dart';
import 'package:book_application/features/search/presentation/view/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/manager/similar_books_cubit/similar_bools_cubit.dart';
import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/HomeView';
  static const kBookDetails = '/BookDetails';
  static const kSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
          path: kBookDetails,
          builder: (context, state) => BlocProvider(
              create: ( context)  =>SimilarBooksCubit(
                getIt.get<HomeRepoImple>(),
              ),
              child:  BookDetailsView(
                bookModels: state.extra as BookModels,
              ))),
      GoRoute(
          path: kSearchView, builder: (context, state) => const SearchView())
    ],
  );
}
