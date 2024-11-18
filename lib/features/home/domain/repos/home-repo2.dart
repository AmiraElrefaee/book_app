import 'package:book_application/core/errors/failurs.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo2 {
  Future<Either<Failures, List<BookEntity>>> fetchFeatureBooks2({int pageNum=0});
  Future<Either<Failures, List<BookEntity>>> fetchNewstBooks2();
  Future<Either<Failures, List<BookEntity>>> fetchsimilareBooks2(
      {required String category});
}
