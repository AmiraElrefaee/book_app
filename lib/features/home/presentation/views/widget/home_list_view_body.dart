import 'package:book_application/core/utils/asset_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeListViewBody extends StatelessWidget {
  const HomeListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio:2.8/4,
        child: Container(
          
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,

            image: const DecorationImage(image: AssetImage(AssetsData.tset),

            fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
