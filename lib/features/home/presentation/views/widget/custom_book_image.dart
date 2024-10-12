import 'package:book_application/core/utils/asset_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imgURL});
 final String imgURL;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child:CachedNetworkImage(imageUrl: imgURL,
      imageBuilder: (context, imageProvider)=> Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            image:  DecorationImage(
                image: NetworkImage(imgURL),
                fit: BoxFit.fill)
          // AssetImage(AssetsData.tset), ,
        ),
      ),
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
        errorWidget: (context, url, error) => Icon(Icons.error,
        size: 80,),
      ),

    );
  }
}
