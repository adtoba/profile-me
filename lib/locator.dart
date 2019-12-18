import 'package:get_it/get_it.dart';
import 'package:profile_me/core/services/api.dart';
import 'package:profile_me/core/viewmodels/home_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => HomeModel());
}