import 'package:book_application/core/utils/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeatureListViewItem extends StatelessWidget {
  const FeatureListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Container(

        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,

          image: const DecorationImage(image: AssetImage(AssetsData.tset),

          fit: BoxFit.fill),
        ),
      ),
    );
  }
}
