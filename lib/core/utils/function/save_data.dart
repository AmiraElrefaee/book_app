import 'package:hive/hive.dart';

import '../../../features/home/domain/entities/book_entity.dart';

void SaveData(List<BookEntity> book, String BoxName) {
  var box=Hive.box<BookEntity>(BoxName);
  box.addAll(book);
}