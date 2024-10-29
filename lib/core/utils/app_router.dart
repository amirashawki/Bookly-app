import 'package:bookly/Features/home/presenation/views/home_view.dart';
import 'package:bookly/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
static final kHomeView= '/homeview';
 static final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, State) => const SplashView(),
  ),

 GoRoute(
    path:kHomeView ,
    builder: (context, State) => const HomeView(),
  ),






]);

}