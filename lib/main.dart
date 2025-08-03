import 'package:bookly_app/Futures/home/data/models/repos/home_repo_implement.dart';
import 'package:bookly_app/Futures/home/presentation/manger/future_books_cubit/future_book_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/constant.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setup();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
       providers: [
        BlocProvider(
          create: (context) => FutureBookCubit(getIt.get<HomeRepoImplement>()),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(getIt.get<HomeRepoImplement>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: kprimaryColor),
      ),
    );
  }
}
