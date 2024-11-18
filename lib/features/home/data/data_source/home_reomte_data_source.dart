import 'package:book_application/constant.dart';
import 'package:book_application/features/home/data/models/BookModel2.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:hive/hive.dart';

import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/function/save_data.dart';

abstract class  HomeRemoteDataSource{
  Future <List<BookEntity>> fectFeatureBooks2({int pageNum=0});
  Future <List<BookEntity>> fectNewestBooks2();
  Future< List<BookEntity>>fetchsimilareBooks2(
      {required String category});

}

class HomeRemoteDataSourceImple extends HomeRemoteDataSource{
  final ApiService apiService;

  HomeRemoteDataSourceImple(this.apiService);
  @override
  Future<List<BookEntity>> fectFeatureBooks2({int pageNum=0})async {
 var data =await  apiService.get(
       endPoint: 'volumes?q=subject:programming&Filtering=free-ebooks&startIndex=${pageNum *10}');

 List<BookEntity> book = getBooksList(data);
 SaveData(book,kFeaturedBox);
 return book;


  }



  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity>book =[];
    for (var  item in data['items'] ){
      book.add(BookModel2.fromJson(item));
    }
    return book;
  }

  @override
  Future<List<BookEntity>> fectNewestBooks2() async{
    var data =await  apiService.get(
        endPoint:
        'volumes?q=programming&Filtering=free-ebooks&Sorting=newest');
    List<BookEntity> book = getBooksList(data);
    SaveData(book, kNewestBooks);
    return book;
  }

  @override
  Future< List<BookEntity>> fetchsimilareBooks2(
      {required String category}) async {
    if( category.isEmpty){
      category='Computer program language)';
    }
      var data = await apiService.get(
          endPoint:
          'volumes?q=$category&Sorting=relevance&Filtering=free-ebooks');
      List<BookEntity> books = getBooksList(data);
      SaveData(books, kNewestBooks);
      return books;
    }
  }


