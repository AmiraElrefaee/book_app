import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../views/data/repos/home_repo.dart';

part 'feature_book_state.dart';

class FeatureBookCubit extends Cubit<FeatureBookState> {
  FeatureBookCubit(this.homeRepo) : super(FeatureBookInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeatureBooks()async{

    emit(FeatureBookLoading());
var result =await homeRepo.fetchFeatureBooks();
result.fold((failure){
emit(FeatureBookFailure(failure.errMessage));
}, (books){
emit(FeatureBookSuccess(books));
});

  }
}
