import 'package:testtaskrickmorti/data/datasources/local/local_character_datasource.dart';

import '../../../domain/hive_entities/character.dart';

abstract class LocalCharacterRepository {
  Future<void> saveCharactersList(List<Character> characters);

  Future<List<Character>> getCharacterList();

  Future<Character> getCharacterById(String characterId);

  Future<void> setLikeById(String characterId);

  Future<void> removeLikeById(String characterId);
}

class LocalCharacterRepositoryImpl extends LocalCharacterRepository {
  LocalCharacterRepositoryImpl(this.datasourceImpl);

  final LocalCharacterDatasourceImpl datasourceImpl;

  @override
  Future<List<Character>> getCharacterList() async {
    final result = await datasourceImpl.getCharacterList();
    return result;
  }

  @override
  Future<void> saveCharactersList(List<Character> characters) async {
    await datasourceImpl.saveCharactersList(characters);
  }

  @override
  Future<Character> getCharacterById(String characterId) async {
    final result = await datasourceImpl.getCharacterById(characterId);
    return result;
  }

  @override
  Future<void> setLikeById(String characterId) async {
    await datasourceImpl.setLikeById(characterId);
  }

  @override
  Future<void> removeLikeById(String characterId) async {
    await datasourceImpl.removeLikeById(characterId);
  }
}
