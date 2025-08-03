import 'package:bookly_app/Futures/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Futures/home/presentation/views/home_view.dart';
import 'package:bookly_app/Futures/search/presentation/views/search_view.dart';
import 'package:bookly_app/Futures/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookdetailsView = '/bookdetailsView';
  static const ksearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
        path: kBookdetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
