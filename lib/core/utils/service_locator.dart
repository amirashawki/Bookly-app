
import 'package:bookly/Features/home/data/repos/repo_home_impl.dart';
import 'package:bookly/core/errors/api_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<RepoHomeImpl>(RepoHomeImpl(getIt.get<ApiServices>()));
}
