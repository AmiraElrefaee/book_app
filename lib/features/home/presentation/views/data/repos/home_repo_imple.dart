import 'package:book_application/core/errors/failurs.dart';
import 'package:book_application/core/utils/api_service.dart';

import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';

import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'home_repo.dart';

class HomeRepoImple implements homeRepo{
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
} on Exception catch (e) {
 return left(ServerFailures());
}


  }

  @override
  Future<Either<Failures, List<BookModels>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

}