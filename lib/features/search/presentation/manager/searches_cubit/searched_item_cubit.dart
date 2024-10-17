import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:book_application/features/search/presentation/view/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../home/presentation/views/data/repos/home_repo.dart';

part 'searched_item_state.dart';

class SearchedItemCubit extends Cubit<SearchedItemState> {
  SearchedItemCubit(this.repo) : super(SearchedItemInitial());
  final HomeRepo repo;
  Future<void> fetchNewestBooks() async {
    emit(SearchedItemLoading());

    var result = await repo.fetchNewestBooks();
    result.fold((failure) {
      emit(SearchedItemFailure(failure.errMessage));
    }, (books) {
      emit(SearchedItemSuccess(books)); // Show all books by default
    });
  }
  Future<void> FetchSeared({required String title})async{
    emit(SearchedItemLoading());
    var result =await repo.fetchNewestBooks();
    result.fold((failure){
      emit(SearchedItemFailure(failure.errMessage));
    }, (books){

      List<BookModels> filteredBooks=[] ;
      emit(SearchedItemSuccess(filteredBooks));
      if (title.isEmpty || title==null){
        filteredBooks=books;
        emit(SearchedItemSuccess(filteredBooks));
      } else{
        filteredBooks = books
            .where((book) =>
            book.volumeInfo.title!.toLowerCase().contains(title.toLowerCase())).toList();
      }
      if (filteredBooks==null ||filteredBooks.isEmpty){
        emit(SearchedItemFailure('the books not found'));
      }
      else {
        emit(SearchedItemSuccess(filteredBooks));
      }

    });

  }
}
// List<Player> results;
// if (enteredKeyword.isEmpty) {
// // if the search field is empty? or only contains white-space, we'll display all users
// results = response.players;
// } else {
// results = response.players.where((Player) =>
// Player.playerName.toLowerCase().contains(enteredKeyword.toLowerCase())).toList();
// // we use the toLowerCase() method to make it case-insensitive
// }