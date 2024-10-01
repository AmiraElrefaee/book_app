import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
    Icon(FontAwesomeIcons.solidStar,color: Colors.amberAccent,),
SizedBox(
  width: 6.3,
),
        Text('4.8',
        style: Styles.textStyle16,),
        SizedBox(
          width: 5,
        ),
        Text('(245)',style: Styles.textStyle14.copyWith(
          color:const Color(0xff707070)
        ),)
      ],
    );
  }
}
