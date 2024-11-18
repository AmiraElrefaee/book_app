import 'package:book_application/core/utils/app_router.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:book_application/features/home/presentation/views/widget/feature_books_list_view_loading_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' hide CarouselController;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_idicator.dart';
import '../../manager/feature_cubit/feature_book_cubit.dart';

class FeatureBooksListView extends StatefulWidget {
  const FeatureBooksListView({super.key});

  @override
  State<FeatureBooksListView> createState() => _FeatureBooksListViewState();
}
class _FeatureBooksListViewState extends State<FeatureBooksListView> {
  final ScrollController _scrollController = ScrollController();
var nextPage=1;
var isLoading=false;
List <BookEntity> books=[];
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll()async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;

    if (currentScroll >= maxScroll * 0.7) {
      // Trigger fetch when 70% scrolled
      print('1 ${nextPage}');
      if (!isLoading) {
        isLoading=true;
       await  BlocProvider.of<FeatureBookCubit>(context).FetchFeatureBooks(
          pageNum: nextPage++
        );
       isLoading=false;
      }

    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeatureBookCubit, FeatureBookState>(
      listener: (context, state ){
        if( state is FeatureBookSuccess){
          books.addAll(state.books);
        }
        if (state is FeaturePaginationBookFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: Colors.red,
              content: Text(state.errMess, style: TextStyle(color: Colors.white),),
              duration: const Duration(seconds: 3),
              ));
        }
      },
      builder: (context, state) {
        // return FeatureBooksListViewLoadingIndicator();
        if (state is FeatureBookSuccess
            || state is FeaturePaginationBookLoading
            ||state is FeaturePaginationBookFailure) {
          return SizedBox(
           height: MediaQuery.of(context).size.height*(2/7),
            child: ListView.builder(
              // physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount:books.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kBookDetails,
                      extra: books[index],
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomBookImage(
                      imgURL: books[index].img??'',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeatureBookFailure) {
          return CustomErrorWidget(
            errorMessage: state.errMess,
          );
        } else {
          return const CustomLoadingIdicator();
        }
      },
    );
  }
}


// class _FeatureBooksListViewState extends State<FeatureBooksListView> {
//   final ScrollController _scrollController = ScrollController();
//
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }
//
//   void _onScroll() {
//     final maxScroll = _scrollController.position.maxScrollExtent;
//     final currentScroll = _scrollController.position.pixels;
//
//     if (currentScroll >= maxScroll * 0.7) {
//       // Trigger fetch when 70% scrolled
//       BlocProvider.of<FeatureBookCubit>(context).FetchFeatureBooks();
//
//     }
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<FeatureBookCubit, FeatureBookState>(
//       builder: (context, state) {
//         if (state is FeatureBookSuccess) {
//           return CarouselSlider.builder(
//             options: CarouselOptions(
//
//               reverse: false,
//               initialPage: 0,
//               animateToClosest: true,
//               disableCenter: true,
//               height: MediaQuery.of(context).size.height * .3,
//               enlargeCenterPage: true,
//               viewportFraction: 0.4,
//             ),
//             itemCount: state.books.length,
//             itemBuilder: (context, index, realIndex) {
//               return InkWell(
//                 onTap: () {
//                   GoRouter.of(context).push(
//                     AppRouter.kBookDetails,
//                     extra: state.books[index],
//                   );
//                 },
//                 child: CustomBookImage(
//                   imgURL: state.books[index].img ?? '',
//                 ),
//               );
//             },
//           );
//         } else if (state is FeatureBookFailure) {
//           return CustomErrorWidget(
//             errorMessage: state.errMess,
//           );
//         } else {
//           return const CustomLoadingIdicator();
//         }
//       },
//     );
//   }
// }


// class _FeatureBooksListViewState extends State<FeatureBooksListView> {
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<FeatureBookCubit, FeatureBookState>(
//       builder: (context, state) {
//         if (state is FeatureBookSuccess) {
//           return CarouselSlider.builder(
//             options: CarouselOptions(
//               reverse: false,
//               initialPage: 0,
//               animateToClosest: true,
//               disableCenter: true,
//               height: MediaQuery.of(context).size.height * .3,
//               enlargeCenterPage: true, // Enable center item scaling
//               viewportFraction: 0.4, // Adjust visible items
//               // Aspect ratio of items
//             ),
//             itemCount: state.books.length,
//             itemBuilder: (context, index, realIndex) {
//               return
//                   // Apply the scale to the first item
//                   InkWell(
//                 onTap: () {
//                   GoRouter.of(context)
//                       .push(AppRouter.kBookDetails, extra: state.books[index]);
//                 },
//                 child: CustomBookImage(
//                   imgURL:
//                       state.books[index].img ?? '',
//                 ),
//               );
//             },
//           );
//         } else if (state is FeatureBookFailure) {
//           return CustomErrorWidget(
//             errorMessage: state.errMess,
//           );
//           // return SizedBox(
//           //   width: 200.0,
//           //   height: 100.0,
//           //   child: Shimmer.fromColors(
//           //     baseColor: Colors.red,
//           //     highlightColor: Colors.yellow,
//           //     child: Text(
//           //       'Shimmer',
//           //       textAlign: TextAlign.center,
//           //       style: TextStyle(
//           //         fontSize: 40.0,
//           //         fontWeight:
//           //         FontWeight.bold,
//           //       ),
//           //     ),
//           //   ),
//           // );
//         } else {
//           return const CustomLoadingIdicator();
//
//           //  return Shimmer.fromColors(
//           //      baseColor: Colors.deepOrange,
//           //      highlightColor: Colors.grey.shade100,
//           //      enabled: true,
//           //      child: const SingleChildScrollView(
//           //        physics: NeverScrollableScrollPhysics(),
//           //        child: Column(
//           //          crossAxisAlignment: CrossAxisAlignment.start,
//           //          mainAxisSize: MainAxisSize.max,
//           //          children: [
//           //
//           //
//           //            SizedBox(height: 16.0),
//           //            ContentPlaceholder(
//           //
//           //
//           //            ),
//           //            SizedBox(height: 16.0),
//           //            SizedBox(height: 16.0),
//           //            ContentPlaceholder(
//           //            ),
//           //            SizedBox(height: 16.0),
//           //            SizedBox(height: 16.0),
//           //            ContentPlaceholder(
//           //            ),
//           //          ],
//           //        ),
//           //      )
//           // );
//         }
//       },
//     );
//   }
// }
