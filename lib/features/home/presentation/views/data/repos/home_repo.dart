import 'package:book_application/core/errors/failurs.dart';
import 'package:dartz/dartz.dart';

import '../book_models/book_models.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModels>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModels>>> fetchFeatureBooks();
  Future<Either<Failures, List<BookModels>>> fetchsimilareBooks(
      {required String category});
}
