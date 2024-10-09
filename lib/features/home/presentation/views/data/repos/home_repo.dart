import 'package:book_application/core/errors/failurs.dart';
import 'package:dartz/dartz.dart';

import '../book_models/book_models.dart';

abstract class homeRepo{
 Future<Either<Failures,List<BookModels>>> fetchBestSellerBooks();
 Future<Either<Failures,List<BookModels>>> fetchFeatureBooks();
}