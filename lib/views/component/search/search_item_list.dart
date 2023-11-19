import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/view_model/search_cubit/search_cubit.dart';
import 'package:booklyapp/views/component/best_seller/best_seller_list_view_item.dart';
import 'package:booklyapp/views/component/custom_error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchItemList extends StatelessWidget {
  const SearchItemList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if(state is SearchSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return BestSellerListViewItem(bookModel: state.books[index]);
            },
          );
        }else if(state is SearchFailure){
          return CustomErrorMessage(errormessage: state.errormessage);
        } else{
          return const Center(child:  CircularProgressIndicator(color: red,));
        }}
    );

  }
}
