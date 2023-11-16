import 'package:bloc/bloc.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/models/repos/home_repo.dart';
import 'package:flutter/cupertino.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> getSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errormessage));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
