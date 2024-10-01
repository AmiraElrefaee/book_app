import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';
import 'custom_appBar.dart';
import 'feature_books_list_view.dart';
import 'feature_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:const  [
            CustomAppbar(),
          FeatureBooksListView(),
          SizedBox(
            height:60,
          ),
          Text('Best Seller',style: Styles.textStyle18,),
          SizedBox(height: 20,),
          BestSellerListViewItem(),

        ],
      ),
    );
  }
}