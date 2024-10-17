import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/function/launch_url.dart';
import '../../../../../core/widgets/custom_botton.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModels});
final BookModels bookModels;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
           Expanded(
              child: CustomBotton(
                onPressed: ()async{
                  // Uri uri =Uri.parse(bookModels.accessInfo!.webReaderLink!);
                  // if (!await launchUrl(uri)) {
                  //
                  // throw Exception('Could not launch $uri');
                  // }
                  LaunchCustomUrl(
                context,bookModels.volumeInfo.previewLink!
                  );
                },
            backGroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            textColor: Colors.black,
            text: 'Free',
          )),
          Expanded(
              child: CustomBotton(
                onPressed: ()async{
                  Uri uri =Uri.parse(bookModels.volumeInfo.previewLink!);
                  if (!await launchUrl(uri)) {

                  throw Exception('Could not launch $uri');
                  }
                },
            backGroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
                topRight:const  Radius.circular(16),
                bottomRight: const Radius.circular(16)),
            textColor: Colors.white,
            text: getText(bookModels),
            fontsize: 18,
          )),
        ],
      ),
    );
  }

String  getText(BookModels bookModels) {
    if (bookModels.volumeInfo.previewLink==null){
      return 'Not Avaliable';
    }else {
      return 'Preview';
    }

  }
}
