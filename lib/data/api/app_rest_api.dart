import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:testtaskrickmorti/data/models/character_response/character_response.dart';
import 'package:testtaskrickmorti/data/models/characters_response/characters_response.dart';

import 'endpoints.dart';

part 'app_rest_api.g.dart';

@RestApi()
abstract class AppRestApi {
  factory AppRestApi(Dio dio, {String baseUrl}) = _AppRestApi;

  @GET('${Endpoints.basePath}/character')
  Future<CharactersResponse> getCharacters();

  @GET('${Endpoints.basePath}/')
  Future<CharacterResponse> getCharacterById(@Path('character/{characterId}') String characterId);
}
