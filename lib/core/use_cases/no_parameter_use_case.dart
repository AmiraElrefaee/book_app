import 'package:book_application/core/errors/failurs.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<Type> {
  Future<Either<Failures, Type>> call();
}
