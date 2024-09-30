import 'package:book_application/core/utils/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Row(
        children: [
        AspectRatio(
        aspectRatio:2.5/4,
        child: Container(

          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.red,

            image: const DecorationImage(image: AssetImage(AssetsData.tset),

                fit: BoxFit.fill),
          ),
        ),
      ),
          Column(
            children: [

            ],
          ),
        ],
      ),
    );
  }
}
