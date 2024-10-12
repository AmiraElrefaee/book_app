import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var widthh = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widthh * .2),
          child: const CustomBookImage(
            imgURL: 'https://www.bing.com/images/search?view=detailV2&ccid=XHxHkV3i&id=0D7B8D91EEB148C7EEC09E98BE10785ACACA3785&thid=OIP.XHxHkV3iucoWMdUIxacQcwHaFJ&mediaurl=https%3a%2f%2fimages.pexels.com%2fphotos%2f1976971%2fpexels-photo-1976971.jpeg%3fauto%3dcompress%26cs%3dtinysrgb%26dpr%3d3%26h%3d750%26w%3d1260&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.5c7c47915de2b9ca1631d508c5a71073%3frik%3dhTfKylp4EL6Yng%26pid%3dImgRaw%26r%3d0&exph=2250&expw=3237&q=books+photos&simid=608028161544699191&FORM=IRPRST&ck=466646FF2AB4EC35DCFFE854C49CF358&selectedIndex=3&itb=0',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book ',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 6),
        Text('Rudyard Kipling ',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
                color: Colors.white.withOpacity(.7))),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
