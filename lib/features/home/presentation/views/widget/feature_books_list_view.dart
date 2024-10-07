import 'package:book_application/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:carousel_slider/carousel_slider.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key});

  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}

class _FeatureBooksListViewState extends State<FeatureBooksListView> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        reverse: false,
        initialPage: 0,
        animateToClosest: true,
        disableCenter: true,
        height: MediaQuery.of(context).size.height * .3,
        enlargeCenterPage: true, // Enable center item scaling
        viewportFraction: 0.4, // Adjust visible items
        // Aspect ratio of items
      ),
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return
            // Apply the scale to the first item
            CustomBookImage();
      },
    );
  }
}
