import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/domain/entities/book_entity.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../domain/use_case/fetch_feature_books_useCase.dart';
import '../../views/data/repos/home_repo.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  final fetchFeatureBooksUseCase featureBooksUseCase;
  FeatureBookCubit( this.featureBooksUseCase) : super(FeatureBookInitial());
  // final HomeRepo homeRepo;
  Future<void> FetchFeatureBooks({int pageNum=0}) async {
    // emit(FeaturePaginationBookFailure('failure.errMessage'));
    print('2 ${pageNum}');
    if (pageNum==0) {
      emit(FeatureBookLoading());
    }
    else {
      emit(FeaturePaginationBookLoading());
    }
 var result=await featureBooksUseCase.call(pageNum);
result.fold((failure){
  if (pageNum==0) {
    emit(FeatureBookFailure(failure.errMessage));
  }else {
    emit(FeaturePaginationBookFailure(failure.errMessage));
  }

}, (book){
  emit(FeatureBookSuccess(book));
});
    // var result = await homeRepo.fetchFeatureBooks();
    // result.fold((failure) {
    //   emit(FeatureBookFailure(failure.errMessage));
    // }, (books) {
    //   emit(FeatureBookSuccess(books));
    // });
  }

}
