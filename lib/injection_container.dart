import 'package:get_it/get_it.dart';
import 'package:testtaskrickmorti/data/datasources/remote/remote_character_datasource.dart';
import 'package:testtaskrickmorti/data/repositories/local_character_repository.dart';
import 'package:testtaskrickmorti/data/repositories/remote_character_repository.dart';

import 'app/app_config.dart';
import 'data/api/app_rest_api.dart';
import 'data/api/dio_builder.dart';
import 'data/datasources/local/local_character_datasource.dart';
import 'feature_charaters/store/character_store.dart';

final sl = GetIt.instance;

Future<void> init(AppConfig appConfig) async {
  if (sl.isRegistered<AppConfig>()) return;

  sl
    ..registerSingleton(appConfig)
    ..registerSingleton(await DioBuilder.buildDio(appConfig));
  if (appConfig.appMockSettings.isMocked) {
  } else {
    sl.registerSingleton(AppRestApi(sl()));
  }
  sl
    ..registerFactory(() => RemoteCharacterDatasourceImpl(sl()))
    ..registerFactory(() => LocalCharacterDatasourceImpl())
    ..registerFactory(() => LocalCharacterRepositoryImpl(sl()))
    ..registerFactory(() => RemoteCharacterRepositoryImpl(sl()))
    ..registerSingleton(CharacterStore(sl()));
}
