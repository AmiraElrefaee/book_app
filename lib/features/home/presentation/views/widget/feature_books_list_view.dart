import 'package:flutter/cupertino.dart';

import 'custom_book_image.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10),
          child:   CustomBookImage(),
        );
      }
      ),
    );
  }
}
