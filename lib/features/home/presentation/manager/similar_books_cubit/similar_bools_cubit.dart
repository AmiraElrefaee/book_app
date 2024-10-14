import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../views/data/repos/home_repo.dart';

part 'similar_bools_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> FetchSimilartBooks({required String category})async{

    emit(SimilarBooksLoading());
    var result =await homeRepo.fetchsimilareBooks(category: category);
    result.fold((failure){
      emit(SimilarBooksFailure(failure.errMessage));
    }, (books){
      emit(SimilarBooksSuccess(books));
    });

  }
}
