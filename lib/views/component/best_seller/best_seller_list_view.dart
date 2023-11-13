import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/view_model/newest_Book_cubit/newest_book_cubit.dart';
import 'package:booklyapp/views/component/best_seller/best_seller_list_view_item.dart';
import 'package:booklyapp/views/component/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
        builder: (context, state) {
      if (state is NewestBookSuccess) {
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: state.books.length,
          itemBuilder: (context, index) {
            return BestSellerListViewItem(
              bookModel: state.books[index],
            );
          },
        );
      } else if (state is NewestBookFailure) {
        return CustomErrorMessage(errormessage: state.errormessage);
      } else {
        return const Center(
          child: CircularProgressIndicator(
            color: red,
          ),
        );
      }
    });
  }
}
