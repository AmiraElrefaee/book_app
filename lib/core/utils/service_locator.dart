import 'package:book_application/features/home/presentation/views/data/repos/home_repo_imple.dart';
import 'package:book_application/features/search/presentation/view/data/repos/home_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/search/presentation/view/data/repos/repo_imple.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setupSErviceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImple>(HomeRepoImple(getIt.get<ApiService>()));
  getIt.registerSingleton<RepoImple>(RepoImple(getIt.get<ApiService>()));

// Alternatively you could write it if you don't like global variables
//   GetIt.I.registerSingleton<HomeRepoImple>(AppModel());
}