import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:book_application/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_details_section.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  final BookEntity bookModels;
  const BookDetailsViewBody({
    super.key,
    required this.bookModels,
  });
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CustomBookDetailsAppBar(),
                  BookDetailsSection(
                    bookModels: bookModels,
                  ),
                  const SizedBox(
                    height: 37,
                  ),
                  BookAction(
                    bookModels: bookModels,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: const SizedBox(
                      height: 40,
                    ),
                  ),
                  SimilarBooksSection(),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
