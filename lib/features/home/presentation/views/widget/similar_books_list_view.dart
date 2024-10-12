import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: CustomBookImage(
                imgURL: 'https://www.bing.com/images/search?view=detailV2&ccid=XHxHkV3i&id=0D7B8D91EEB148C7EEC09E98BE10785ACACA3785&thid=OIP.XHxHkV3iucoWMdUIxacQcwHaFJ&mediaurl=https%3a%2f%2fimages.pexels.com%2fphotos%2f1976971%2fpexels-photo-1976971.jpeg%3fauto%3dcompress%26cs%3dtinysrgb%26dpr%3d3%26h%3d750%26w%3d1260&cdnurl=https%3a%2f%2fth.bing.com%2fth%2fid%2fR.5c7c47915de2b9ca1631d508c5a71073%3frik%3dhTfKylp4EL6Yng%26pid%3dImgRaw%26r%3d0&exph=2250&expw=3237&q=books+photos&simid=608028161544699191&FORM=IRPRST&ck=466646FF2AB4EC35DCFFE854C49CF358&selectedIndex=3&itb=0',
              ),
            );
          }),
    );
  }
}
