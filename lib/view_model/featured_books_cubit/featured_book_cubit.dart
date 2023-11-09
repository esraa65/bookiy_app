import 'package:bloc/bloc.dart';
import 'package:booklyapp/models/book_model.dart';
import 'package:booklyapp/models/repos/home_repo.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());
  final HomeRepo homeRepo;
  Future<void> getFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errormessage));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
