import 'package:bloc/bloc.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/models/repos/home_repo.dart';
import 'package:flutter/cupertino.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());
  final HomeRepo homeRepo;

  Future<void> getNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewBooks();
    result.fold((failure) {
      emit(NewestBookFailure(failure.errormessage));
    }, (books) {
      emit(NewestBookSuccess(books));
    });
  }
}
