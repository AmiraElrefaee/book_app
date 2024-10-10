import 'package:bloc/bloc.dart';
import 'package:book_application/features/home/presentation/views/data/book_models/book_models.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit() : super(NewestBooksInitial());
}
