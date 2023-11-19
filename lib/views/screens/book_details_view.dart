import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/views/component/book_details/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key, required this.bookmodel}) : super(key: key);
  final BookModel bookmodel;
  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .getSimilarBooks(category: widget.bookmodel.volumeInfo.categories?[0]??'');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: BookDetailsViewBody(bookModel: widget.bookmodel),
        ),
      ),
    );
  }
}
