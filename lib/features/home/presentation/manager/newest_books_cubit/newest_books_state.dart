part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState extends Equatable {
  const NewestBooksState();
  List<Object> get props =>[];
}

final class NewestBooksInitial extends NewestBooksState {}
final class NewestBooksLoading extends NewestBooksState {}
final class NewestBooksFailure extends NewestBooksState {
  final String messError;

  const NewestBooksFailure(this.messError);

}
final class NewestBooksSuccess extends NewestBooksState {
  final List<BookModels> bookModels;

 const  NewestBooksSuccess(this.bookModels);

}
