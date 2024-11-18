import 'package:dartz/dartz.dart';

import '../../../../core/errors/failurs.dart';
import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home-repo2.dart';

class FetchSimilarBooksUsecase extends UseCase<List<BookEntity>, String> {
  final HomeRepo2 homeRepo2;

  FetchSimilarBooksUsecase(this.homeRepo2);
  @override
  Future<Either<Failures, List<BookEntity>>> call(String? param) async {
    return await homeRepo2.fetchsimilareBooks2(category: param.toString());
  }
}