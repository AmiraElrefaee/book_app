import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/cutsom_fading_wodget.dart';
import 'custom_book_image_loading_idicator.dart';

class FeatureBooksListViewLoadingIndicator extends StatelessWidget {
  const FeatureBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CutsomFadingWodget(
      child: SizedBox(
        height: MediaQuery.of(context).size.height*(2/7),
        child: ListView.builder(
          // physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          itemCount:15,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                GoRouter.of(context).push(
                  AppRouter.kBookDetails,
                  // extra: books[index],
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomBookImageLoadingIdicator(),
              ),
            );
          },
        ),
      ),
    );
  }
}
