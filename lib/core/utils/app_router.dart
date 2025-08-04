import 'package:bookly_app/Futures/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Futures/home/data/models/repos/home_repo_implement.dart';
import 'package:bookly_app/Futures/home/presentation/manger/similar_cubit/similar_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/Futures/home/presentation/views/home_view.dart';
import 'package:bookly_app/Futures/search/presentation/views/search_view.dart';
import 'package:bookly_app/Futures/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarCubit(getIt.get<HomeRepoImplement>()),
          child:  BookDetailsView(bookModel: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
