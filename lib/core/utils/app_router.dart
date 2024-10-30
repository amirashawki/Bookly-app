import 'package:bookly/Features/home/presenation/views/home_view.dart';
import 'package:bookly/Features/home/presenation/views/widgets/book_details_view_body.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeview';
  static const kSearchView = '/searchview';
  static const kBookDetaislView = '/BookDetailsViewBody';

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
      builder: (context, State) => const BookDetailsViewBody(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, State) => const SearchView(),
    ),
  ]);
}
