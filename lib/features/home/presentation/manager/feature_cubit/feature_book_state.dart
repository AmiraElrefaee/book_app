part of 'feature_book_cubit.dart';

@immutable
sealed class FeatureBookState extends Equatable {
const FeatureBookState();
List<Object> get props =>[];

}

final class FeatureBookInitial extends FeatureBookState {}
final class FeatureBookLoading extends FeatureBookState {}
final class FeatureBookFailure extends FeatureBookState {
 final  String errMess;

 const  FeatureBookFailure( this.errMess);

}
final class FeatureBookSuccess extends FeatureBookState {
  final List<BookModels> books ;

  const FeatureBookSuccess(this.books);

}