import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_error_widget.dart';
import '../../../../../core/widgets/custom_loading_idicator.dart';
import '../../manager/feature_cubit/feature_book_cubit.dart';
import 'feature_books_list_view.dart';

class FeatureListViewBlocBuilder extends StatelessWidget {
  const FeatureListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FeatureBooksListView();
    // return BlocBuilder<FeatureBookCubit, FeatureBookState>(
    //   builder: (context, state) {
    //     if (state is FeatureBookSuccess) {
    //       return FeatureBooksListView();
    //     } else if (state is FeatureBookFailure){
    //     return  CustomErrorWidget(errorMessage: state.errMess,);
    //     } else{
    //      return CustomLoadingIdicator();
    //     }
    //
    //
    //   },
    // );
  }
}
