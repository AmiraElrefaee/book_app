import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookImageLoadingIdicator extends StatelessWidget {
  const CustomBookImageLoadingIdicator({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: ClipRect(

          child:  Container(
            color: Colors.white24,
          ))
    );
  }
}
