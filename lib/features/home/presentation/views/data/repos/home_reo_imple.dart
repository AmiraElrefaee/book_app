import 'package:book_application/core/errors/failurs.dart';

import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImple implements homeRepo{
  @override
  Future<Either<Failures, List<BookModels>>> fetchBestSellerBooks() {

    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModels>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

}