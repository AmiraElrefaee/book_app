import 'package:book_application/core/utils/asset_data.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgURL});
 final String imgURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          image:  DecorationImage(
              image: NetworkImage(imgURL),
              fit: BoxFit.fill)
              // AssetImage(AssetsData.tset), ,
        ),
      ),
    );
  }
}
