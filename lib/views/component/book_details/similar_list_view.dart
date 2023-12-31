import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/views/component/custom_error_message.dart';
import 'package:booklyapp/views/component/list_view_item/custom_Book_Image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilarListView extends StatelessWidget {
  const SimilarListView({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.bookdetailsview,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageurl:
                          state.books[index].volumeInfo.imageLinks.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errormessage: state.error);
        } else {
          return const CircularProgressIndicator(color: red);
        }
      },
    );
  }
}
