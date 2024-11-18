import 'package:book_application/core/errors/failurs.dart';
import 'package:book_application/core/use_cases/no_parameter_use_case.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/domain/repos/home-repo2.dart';
import 'package:dartz/dartz.dart';

class FetchNewestBooksUseCase extends UseCase<List<BookEntity>> {
  final HomeRepo2 homeRepo2;

  FetchNewestBooksUseCase(this.homeRepo2);
  @override
  Future<Either<Failures, List<BookEntity>>> call() {
    return homeRepo2.fetchNewstBooks2();
  }
}
