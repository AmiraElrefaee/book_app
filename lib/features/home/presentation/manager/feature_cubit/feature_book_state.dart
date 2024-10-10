part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState {}

final class FeatureBookInitial extends FeatureBookState {}
final class FeatureBookLoading extends FeatureBookState {}
final class FeatureBookFailure extends FeatureBookState {
 final  String errMess;

  FeatureBookFailure( this.errMess);

}
final class FeatureBookSuccess extends FeatureBookState {
  final List<BookModels> books ;

   FeatureBookSuccess(this.books);

}