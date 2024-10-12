import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../views/data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> FetchNewestBooks()async{

    emit(NewestBooksInitial());
    var result =await homeRepo.fetchNewestBooks();
    result.fold((failure){
      emit(NewestBooksFailure(failure.errMessage));
    }, (books){
      emit(NewestBooksSuccess(books));
    });

  }
}
