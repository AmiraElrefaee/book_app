import 'package:book_application/core/errors/failurs.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/use_cases/use_case.dart';
import '../entities/book_entity.dart';
import '../repos/home-repo2.dart';

class fetchFeatureBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo2 homeRepo2;
  fetchFeatureBooksUseCase(this.homeRepo2);

  @override
  Future<Either<Failures, List<BookEntity>>> call([int param=0]) async {
    return await homeRepo2.fetchFeatureBooks2(
      pageNum: param
    );
  }
}
