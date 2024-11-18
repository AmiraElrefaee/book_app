import 'package:book_application/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';

import 'best_seller_list_view_item.dart';
import 'custom_appBar.dart';
import 'feature_books_list_view.dart';
import 'feature_list_view_body_blic_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
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
                  'Newest books',
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

