import 'package:book_application/core/utils/styles.dart';
import 'package:book_application/features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:book_application/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_details_section.dart';
import 'book_rating.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                  BookDetailsSection(),
                  const SizedBox(
                    height: 37,
                  ),
                  const BookAction(),
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
