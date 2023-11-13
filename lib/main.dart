import 'package:booklyapp/core/app_router.dart';
import 'package:booklyapp/core/constants/colors.dart';
import 'package:booklyapp/core/service_locator.dart';
import 'package:booklyapp/models/repos/home_reop_implementation.dart';
import 'package:booklyapp/view_model/featured_books_cubit/featured_book_cubit.dart';
import 'package:booklyapp/view_model/newest_Book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupservicelocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This screens is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBookCubit(
              getIt.get<HomeRepoImplementation>())..getFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBookCubit(getIt.get<HomeRepoImplementation>())..getNewestBooks(),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
              scaffoldBackgroundColor: maincolor,
              textTheme:
                  GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        ),
      ),
    );
  }
}
