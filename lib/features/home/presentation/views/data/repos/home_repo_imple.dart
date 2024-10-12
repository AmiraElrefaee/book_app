import 'package:book_application/core/errors/failurs.dart';
import 'package:book_application/core/utils/api_service.dart';

import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


import 'home_repo.dart';

class HomeRepoImple implements HomeRepo{
  final ApiService apiService;
  HomeRepoImple(this.apiService);

  @override
  Future<Either<Failures, List<BookModels>>> fetchNewestBooks()async {
try {
  var data =
  await apiService.get(
      endPoint: 'volumes?q=subject:Programming&Filtering=free-ebooks&Sorting=newest');
  List<BookModels> books=[];
  for(var item in data['items']){
    books.add(BookModels.fromJson(item));
  }
  return right(books);
}  catch (e) {
 if ( e is DioException){
   return Left(ServerFailures.fromDioException(e));
 }
 return Left(ServerFailures('repo home imple ${e.toString()}'));
}


  }

  @override
  Future<Either<Failures, List<BookModels>>> fetchFeatureBooks()async {
    try {
      var data =
          await apiService.get(
          endPoint: 'volumes?q=subject:Programming&Filtering=free-ebooks');
      List<BookModels> books=[];
      for(var item in data['items']){
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    }  catch (e) {
      if ( e is DioException){
        return Left(ServerFailures.fromDioException(e));
      }
      return Left(ServerFailures('repo home imple ${e.toString()}'));
    }

  }

}