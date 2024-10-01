import 'package:book_application/core/utils/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

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
          SizedBox(width: 30,),
          SizedBox(
            width: MediaQuery.of(context).size.width*.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text('hary potter and the  golbet of fire ',
                  style: Styles.textStyle20.copyWith(
                    fontFamily: 'GT'
                  ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,),
                const SizedBox(height: 3,),
              const  Text('J.K.Rowling',
                style: Styles.textStyle14,),
                const SizedBox(height: 3,),
                Row(
                  children: [
                    Text('19.99 \$',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
