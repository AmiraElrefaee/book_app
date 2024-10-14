part of 'similar_bools_cubit.dart';

@immutable
sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();
  List <Object> get props =>[];
}

final class SimilarBooksInitial extends SimilarBooksState {}
final class SimilarBooksLoading extends SimilarBooksState {}
final class SimilarBooksFailure extends SimilarBooksState {
  final String errMess;

  const SimilarBooksFailure(this.errMess);

}
final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModels>books;

  const SimilarBooksSuccess(this.books);


}