import 'package:testtaskrickmorti/data/datasources/remote/remote_character_datasource.dart';
import 'package:testtaskrickmorti/data/models/characters_response/characters_response.dart';

import '../models/character_response/character_response.dart';

abstract class RemoteCharacterRepository {
  Future<CharactersResponse> getCharactersList();

  Future<CharacterResponse> getCharacterById(String characterId);
}

class RemoteCharacterRepositoryImpl extends RemoteCharacterRepository {
  RemoteCharacterRepositoryImpl(this.remoteCharacterDatasourceImpl);

  final RemoteCharacterDatasourceImpl remoteCharacterDatasourceImpl;

  @override
  Future<CharacterResponse> getCharacterById(String characterId) async {
    final result = await remoteCharacterDatasourceImpl.getCharacterById(characterId);
    return result;
  }

  @override
  Future<CharactersResponse> getCharactersList() async {
    final result = await remoteCharacterDatasourceImpl.getCharactersList();
    return result;
  }
}
