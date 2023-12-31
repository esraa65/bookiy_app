import 'package:booklyapp/core/errors/faliure.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract  class HomeRepo{
 Future<Either<Failure,List<BookModel>>> fetchNewBooks();
 Future<Either<Failure,List<BookModel>>> fetchFeaturedBooks();
 Future<Either<Failure,List<BookModel>>> fetchSimilarBooks({required String category});
 Future<Either<Failure,List<BookModel>>> searchBooks({required String bookName});

}