import 'package:bookly/Features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:bookly/core/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/repo_home_impl.dart';
import 'package:bookly/Features/home/presenation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presenation/views/book_details_view.dart';
import 'package:bookly/Features/home/presenation/views/home_view.dart';
import 'package:bookly/Features/home/presenation/views/widgets/book_details_view_body.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kSearchView = '/searchview';
  static const kBookDetaislView = '/BookDetailsView';

  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, State) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, State) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetaislView,
      builder: (context, State) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt<RepoHomeImpl>()),
        child: BookDetailsView(
          bookModel: State.extra as BookModel,
        ),
      ),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, State) => BlocProvider(
        create: (context) => SearchCubit(),
        child: SearchView(),
      ),
    ),
  ]);
}
