import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  final BookEntity bookModels;
  const BookDetailsSection({
    super.key,
    required this.bookModels,
  });

  @override
  Widget build(BuildContext context) {
    var widthh = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthh * .2),
          child: CustomBookImage(
            imgURL: bookModels.img ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModels.title!,
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 6),
        Text(bookModels.outhName!,
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(.7))),
        const SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          count: bookModels.rating?? 0,
          rating: bookModels.rating ?? 0,
        ),
      ],
    );
  }
}
