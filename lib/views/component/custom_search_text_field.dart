import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/view_model/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: SearchCubit.get(context).searchController,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: white),
              borderRadius: BorderRadius.circular(20)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: white),
              borderRadius: BorderRadius.circular(20)),
          hintText: 'Search',
          suffixIcon: IconButton(
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
              color: white,
            ),
            onPressed: () {
              if (SearchCubit.get(context).searchController.text.isNotEmpty) {
                SearchCubit.get(context).getBookName(
                    bookName: SearchCubit.get(context).searchController.text);
              }
            },
          )),
      onEditingComplete:() {
        final searchController = SearchCubit.get(context).searchController;
        if (searchController.text.isEmpty) {
          SearchCubit.get(context).getBookName(bookName: searchController.text);
        }
      },
    );
  }
}
