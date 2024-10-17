part of 'searched_item_cubit.dart';

@immutable
sealed class SearchedItemState {}

final class SearchedItemInitial extends SearchedItemState {}
final class SearchedItemLoading extends SearchedItemState {}
final class SearchedItemFailure extends SearchedItemState {
  final String ErrMess;

  SearchedItemFailure(this.ErrMess);

}
final class SearchedItemSuccess extends SearchedItemState {
  final List<BookModels>books;

  SearchedItemSuccess(this.books);
}

