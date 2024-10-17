import 'package:book_application/core/widgets/custom_error_widget.dart';
import 'package:book_application/core/widgets/custom_loading_idicator.dart';
import 'package:book_application/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widget/books_view_item.dart';
import '../../manager/searches_cubit/searched_item_cubit.dart';

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
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksViewItem(
                    bookModels:state.books[index] ,
                  ),
                );
              });
        }
        else if(state is SearchedItemFailure){
          return CustomErrorWidget(errorMessage: state.ErrMess,);

        }
        else {
          return CustomLoadingIdicator();
        }
      },
    );
  }
}
