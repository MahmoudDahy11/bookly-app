import 'package:bookly_app/Futures/home/data/models/repos/home_repo_implement.dart';
import 'package:bookly_app/Futures/home/presentation/manger/future_books_cubit/future_book_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/Futures/home/presentation/views/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FutureBookCubit(HomeRepoImplement())),
        BlocProvider(
          create: (context) => NewestBooksCubit(HomeRepoImplement()),
        ),
      ],
      child: Scaffold(body: HomeViewBody()),
    );
  }
}
