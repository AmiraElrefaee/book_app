import 'package:book_application/core/errors/failurs.dart';
import 'package:book_application/core/utils/api_service.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:book_application/features/search/presentation/view/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepoImple extends homeRepo {
  final ApiService apiService;
  RepoImple(this.apiService);
  @override
  Future<Either<Failures, List<BookModels>>> fetchSearchedBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=computer science&Filtering=free-ebooks&Sorting=newest');
      List<BookModels> books = [];
      for (var item in data['items']) {
        try {
          books.add(BookModels.fromJson(item));
        } catch (e) {
          books.add(BookModels.fromJson(item));
        }
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailures.fromDioException(e));
      }
      return Left(ServerFailures('repo home imple ${e.toString()}'));
    }
  }
}
