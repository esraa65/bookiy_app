import 'package:booklyapp/core/service_locator.dart';
import 'package:booklyapp/models/repos/home_reop_implementation.dart';
import 'package:booklyapp/view_model/search_cubit/search_cubit.dart';
import 'package:booklyapp/views/component/search/search_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => SearchCubit(getIt.get<HomeRepoImplementation>())
      ..getBookName(bookName: ''),
      child: const Scaffold(
        body: SafeArea(
          child: SearchBody(),
        ),
      ),
    );
  }
}
