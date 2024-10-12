import 'package:book_application/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_idicator.dart';
import '../../manager/feature_cubit/feature_book_cubit.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key});

  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}

class _FeatureBooksListViewState extends State<FeatureBooksListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBookCubit, FeatureBookState>(
  builder: (context, state) {
    if (state is FeatureBookSuccess) {
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
        itemCount: state.books.length,
        itemBuilder: (context, index, realIndex) {

          return
              // Apply the scale to the first item
              CustomBookImage(
                imgURL: state.books[index].volumeInfo.imageLinks.thumbnail,
              );
        },
      );
    }
    else  if (state is FeatureBookFailure ) {
      return CustomErrorWidget(errorMessage: state.errMess,) ;
    }
    else {
      return const CustomLoadingIdicator();
    }

  }
  ,
);
  }
}
