import 'package:bookly_app/Futures/home/data/models/repos/home_repo_implement.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<HomeRepoImplement>(HomeRepoImplement());
}
