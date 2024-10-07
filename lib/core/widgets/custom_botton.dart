import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton(
      {super.key,
      required this.backGroundColor,
      required this.textColor,
      this.borderRadius,
      required this.text,
      this.fontsize});
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontsize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(12),
              )),
          child: Text(
            text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontsize,
            ),
          )),
    );
  }
}
