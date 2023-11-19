import 'package:bloc/bloc.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/models/repos/home_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.homeRepo) : super(SearchInitial());
  final HomeRepo homeRepo;
TextEditingController searchController=TextEditingController();
static SearchCubit get(BuildContext context)=>BlocProvider.of(context);
  Future<void>getBookName({required String bookName}) async {
    emit(SearchLoading());
    var result = await homeRepo.searchBooks(bookName:bookName );
    result.fold((failure) {
      emit(SearchFailure(failure.errormessage));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
