import 'package:bookly/Features/home/data/repos/repo_home_impl.dart';
import 'package:bookly/Features/home/presenation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/home/presenation/manager/Newset_books_cubit/newset_books_cubit.dart';
import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt<RepoHomeImpl>())..fetchfeatureBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt<RepoHomeImpl>())..fetchNewseteBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
