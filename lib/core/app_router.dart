import 'package:booklyapp/views/screens/book_details_view.dart';
import 'package:booklyapp/views/screens/home.dart';
import 'package:booklyapp/views/screens/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

 static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) =>const SplashView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) =>const Home(),
      ),
      GoRoute(
        path: '/BookDetailsView',
        builder: (context, state) =>const BookDetailsView(),
      ),
    ],
  );
}