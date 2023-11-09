part of 'featured_book_cubit.dart';

abstract class FeaturedBookState {}

class FeaturedBookInitial extends FeaturedBookState {}

class FeaturedBookLoading extends FeaturedBookState {}

class FeaturedBookFailure extends FeaturedBookState {
  final String errormessage;
  FeaturedBookFailure(this.errormessage);
}

class FeaturedBookSuccess extends FeaturedBookState {
  final List<BookModel> books;

  FeaturedBookSuccess(this.books);
}
