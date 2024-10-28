import 'package:testtaskrickmorti/data/models/characters_response/characters_response.dart';

import '../../api/app_rest_api.dart';
import '../../models/character_response/character_response.dart';

abstract class RemoteCharacterDatasource {
  Future<CharactersResponse> getCharactersList();

  Future<CharacterResponse> getCharacterById(String characterId);
}

class RemoteCharacterDatasourceImpl extends RemoteCharacterDatasource {
  RemoteCharacterDatasourceImpl(this.appRestApi);

  final AppRestApi appRestApi;

  @override
  Future<CharacterResponse> getCharacterById(String characterId) async {
    final result = await appRestApi.getCharacterById(characterId);
    return result;
  }

  @override
  Future<CharactersResponse> getCharactersList() async {
    final result = await appRestApi.getCharacters();
    return result;
  }
}
