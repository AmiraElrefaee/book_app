import 'package:book_application/features/home/presentation/views/widget/best_seller_item.dart';
import 'package:flutter/cupertino.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
          itemCount: 4,
          itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 10),
          child:  BestSellerItem(),
        );
      }),
    );
  }
}
