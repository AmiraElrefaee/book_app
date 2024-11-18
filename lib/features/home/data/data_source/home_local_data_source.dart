import 'package:book_application/constant.dart';
import 'package:hive/hive.dart';

import '../../domain/entities/book_entity.dart';

abstract class  HomeLocalDataSource{
  List<BookEntity> fectFeatureBooks2({int pageNum=0});
  List<BookEntity> fectNewestBooks2();
   List<BookEntity>fetchsimilareBooks2(
      {required String category});
}

class HomeLocalDataSourceImple extends HomeLocalDataSource{
  @override
  List<BookEntity> fectFeatureBooks2({int pageNum=0}) {
    print('3 ${pageNum}');
    int startIndex= pageNum*10;
    int endIndex=(pageNum+1)*10;

 var box=Hive.box<BookEntity>(kFeaturedBox);
 int length= box.values.length;
 if (startIndex>= length ||endIndex >length){
   return [];
 }
 return box.values.toList().sublist(startIndex,endIndex);
  }

  @override
  List<BookEntity> fectNewestBooks2() {
   var box=Hive.box<BookEntity>(kNewestBooks);
   return box.values.toList();
  }

  @override
  List<BookEntity> fetchsimilareBooks2({required String category}) {
    var box=Hive.box<BookEntity>(kSimilarBox);
    return box.values.toList();
  }


}
//kSimilarBox