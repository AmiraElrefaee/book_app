import 'package:flutter/cupertino.dart';

import 'custom_appBar.dart';
import 'feature_books_list_view.dart';
import 'feature_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:const  [
          CustomAppbar(),


        FeatureBooksListView(),

      ],
    );
  }
}