import 'package:book_application/core/widgets/custom_error_widget.dart';
import 'package:book_application/core/widgets/custom_loading_idicator.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widget/books_view_item.dart';
import '../../manager/searches_cubit/searched_item_cubit.dart';
import 'books_view_item2.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchedItemCubit, SearchedItemState>(
      builder: (context, state) {
        if (state is SearchedItemSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksViewItem2(
                    bookModels: state.books[index],
                  ),
                );
              });
        } else if (state is SearchedItemFailure) {
          return CustomErrorWidget(
            errorMessage: state.ErrMess,
          );
        } else {
          return CustomLoadingIdicator();
        }
      },
    );
  }
}
