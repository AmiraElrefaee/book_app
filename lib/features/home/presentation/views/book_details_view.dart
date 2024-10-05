import 'package:book_application/features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: const  Scaffold(
        body: BookDetailsViewBody(),
      ),
    );
  }
}
