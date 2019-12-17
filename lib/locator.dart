import 'package:get_it/get_it.dart';
import 'package:profile_me/core/viewmodels/home_model.dart';
import 'package:profile_me/repo/github_repo.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => GithubProfile());
  locator.registerLazySingleton(() => HomeModel());
}