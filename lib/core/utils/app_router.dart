import 'package:book_application/features/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/views/book_details_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';



abstract class AppRouter{
  static const kHomeView='/HomeView';
  static const kBookDetails='/BookDetails';
 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>const  SplashView(),
      ),
      GoRoute(
        path:kHomeView,
        builder: (context, state) =>const  HomeView(),
      ),
      GoRoute(path: kBookDetails,
      builder: (context,state)=> const BookDetailsView()
      ),
    ],
  );

}