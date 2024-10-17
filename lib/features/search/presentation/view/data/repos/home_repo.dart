import 'package:dartz/dartz.dart';

import '../../../../../../core/errors/failurs.dart';
import '../../../../../home/presentation/views/data/book_models/book_models.dart';

abstract class homeRepo{
  Future<Either<Failures,List<BookModels>>> fetchSearchedBooks();

}