import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity extends HiveObject {
  @HiveField(0)
  final String BookId;
  @HiveField(1)
  final String ?img;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String ?outhName;
  @HiveField(4)
  final num ?price;
  @HiveField(5)
  final num ?rating;
  @HiveField(6)
  final String ?previewLink;
  @HiveField(7)
  final List<dynamic> ?categories;

  BookEntity(
      {required this.BookId,required this.img,
      required this.title,
      required this.outhName,
      required this.price,
      required this.rating,
      required this.previewLink,
        required this.categories
      });
}
