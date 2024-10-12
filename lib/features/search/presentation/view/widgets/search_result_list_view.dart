import 'package:book_application/core/widgets/custom_error_widget.dart';
import 'package:book_application/core/widgets/custom_loading_idicator.dart';
import 'package:book_application/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/views/widget/books_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.bookModels.length,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BooksViewItem(
                    bookModels:state.bookModels[index] ,
                  ),
                );
              });
        }
        else if(state is NewestBooksFailure){
          return CustomErrorWidget(errorMessage: state.messError);
        }
        else {
          return CustomLoadingIdicator();
        }
      },
    );
  }
}
