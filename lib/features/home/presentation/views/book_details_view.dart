import 'package:book_application/features/home/presentation/manager/similar_books_cubit/similar_bools_cubit.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:book_application/features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.bookModels, });
final BookModels bookModels;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).FetchSimilartBooks(
      category: widget.bookModels.volumeInfo.categories![0],
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Scaffold(
        body: BookDetailsViewBody(
          bookModels: widget.bookModels,
        ),
      ),
    );
  }
}
