import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

import 'books_view_item.dart';
import 'best_seller_list_view_item.dart';
import 'custom_appBar.dart';
import 'feature_books_list_view.dart';
import 'custom_book_image.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppbar(),
              ),
              FeatureBooksListView(),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Best Seller',
                  style: Styles.textStyle18,
                ),
              ),
              // SizedBox(height: 10,)
            ],
          ),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListViewItem(),
        )),
      ],
    );
  }
}
