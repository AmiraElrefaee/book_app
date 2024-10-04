import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_botton.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: const Row(
        children: [
          Expanded(child: CustomBotton(
            backGroundColor:Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16)),
            textColor: Colors.black,
            text: '19.99\$',

          )),
          Expanded(child: CustomBotton(
            backGroundColor:Color(0xffEF8262),
            borderRadius: BorderRadius.only(topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            textColor: Colors.white,
            text: 'Free Preview',
            fontsize: 18,
          )),
        ],
      ),
    );
  }
}
