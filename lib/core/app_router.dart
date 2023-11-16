import 'package:booklyapp/core/service_locator.dart';
import 'package:booklyapp/models/book_model/book_model.dart';
import 'package:booklyapp/models/repos/home_reop_implementation.dart';
import 'package:booklyapp/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:booklyapp/views/screens/book_details_view.dart';
import 'package:booklyapp/views/screens/home.dart';
import 'package:booklyapp/views/screens/search_view.dart';
import 'package:booklyapp/views/screens/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const home = '/home';
  static const bookdetailsview = '/BookDetailsView';
  static const searchview = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: bookdetailsview,
        builder: (context, state) => BlocProvider(
            create: (context) =>
                SimilarBooksCubit(getIt.get<HomeRepoImplementation>()),
            child: BookDetails(
              bookmodel: state.extra as BookModel,
            )),
      ),
      GoRoute(
        path: searchview,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
