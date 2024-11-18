part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState extends Equatable {
  const FeatureBookState();
  List<Object> get props => [];
}

final class FeatureBookInitial extends FeatureBookState {}

final class FeatureBookLoading extends FeatureBookState {}
final class FeaturePaginationBookLoading extends FeatureBookState {}
final class FeaturePaginationBookFailure extends FeatureBookState {
  final String errMess;

  FeaturePaginationBookFailure(this.errMess);

}

final class FeatureBookFailure extends FeatureBookState {
  final String errMess;

  const FeatureBookFailure(this.errMess);
}

final class FeatureBookSuccess extends FeatureBookState {
  final List<BookEntity> books;

  const FeatureBookSuccess(this.books);
}
