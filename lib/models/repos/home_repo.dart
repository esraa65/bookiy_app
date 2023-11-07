import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract  class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchBestSellerBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();

}