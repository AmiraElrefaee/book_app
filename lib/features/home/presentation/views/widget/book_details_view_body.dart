import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'book_rating.dart';
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
            padding: EdgeInsets.symmetric(horizontal: widthh*.2),
            child: CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text('The Jungle Book ',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),),
          const SizedBox(height: 6),
          Text('Rudyard Kipling ',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic
                  ,fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(.7)
            )),
         const SizedBox(height: 18,),
         const  BookRating(
           mainAxisAlignment: MainAxisAlignment.center,
         ),
          const SizedBox(
            height: 37,
          ),
       const BookAction(),
          
        ],
      ),
    );
  }
}
