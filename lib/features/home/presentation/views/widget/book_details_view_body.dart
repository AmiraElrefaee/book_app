import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthh =MediaQuery.of(context).size.width;
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
         const  CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthh*.18),
            child: CustomBookImage(),
          ),
        ],
      ),
    );
  }
}
