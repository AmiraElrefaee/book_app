import 'package:book_application/features/home/data/data_source/home_local_data_source.dart';
import 'package:book_application/features/home/data/data_source/home_reomte_data_source.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/domain/repos/home-repo2.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failurs.dart';
import '../../presentation/views/data/book_models/book_models.dart';

class HomeRepoImple2 extends HomeRepo2{
final HomeLocalDataSource homeLocalDataSource;
final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImple2({required this.homeLocalDataSource, required this.homeRemoteDataSource});
  @override
  Future<Either<Failures, List<BookEntity>>> fetchFeatureBooks2({int pageNum=0})async {

   try {
     var BooksList= homeLocalDataSource.fectFeatureBooks2(pageNum: pageNum);
     var books= await homeRemoteDataSource.fectFeatureBooks2(pageNum: pageNum);
     if ( BooksList.isNotEmpty){
       return Right(BooksList);
     } else {
       return Right(books);
     }

   }  catch (e) {
   if (e is DioException) {
     return left(ServerFailures.fromDioException(e));
   }else{
    return left(ServerFailures(e.toString()));
   }
   }
  }

  @override
  Future<Either<Failures, List<BookEntity>>> fetchNewstBooks2()async {
    List<BookEntity> books;
    try {
      // books= await homeRemoteDataSource.fectNewestBooks2();
      // return Right(books);

      books= homeLocalDataSource.fectNewestBooks2();

      if ( books.isNotEmpty){
        return Right(books);
      }
      else {
        books= await homeRemoteDataSource.fectNewestBooks2();
        return Right(books);}
    }

    catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioException(e));
      }else{
       return left(ServerFailures(e.toString()));
      }
    }
  }
Future<Either<Failures, List<BookEntity>>> fetchsimilareBooks2(
    {required String category}) async {
  List<BookEntity> books;
  try {
     books= await homeLocalDataSource.fetchsimilareBooks2(category: category);

    if ( books.isNotEmpty){
      return Right(books);
    }
   else { books= await homeRemoteDataSource.fetchsimilareBooks2(category: category);
    return Right(books);}


  } catch (e) {
    if (e is DioException) {
      return Left(ServerFailures.fromDioException(e));
    }
    print(ServerFailures('repo home imple33 ${e.toString()}'));
    return Left(ServerFailures('repo home imple33 ${e.toString()}'));
  }
}
}