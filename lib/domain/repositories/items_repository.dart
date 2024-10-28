import 'package:testtaskrickmorti/data/datasources/local/local_character_datasource.dart';
import 'package:testtaskrickmorti/domain/entities/characterEntity.dart';

import '../../../domain/hive_entities/character.dart';
import '../../data/datasources/remote/remote_character_datasource.dart';

abstract class ItemsRepository {
  Future<void> saveCharactersList(List<Character> characters);

  Future<List<CharacterEntity>> getAndCacheCharacterList();

  Future<Character> getCharacterById(String characterId);

  Future<void> setLikeById(String characterId);

  Future<void> removeLikeById(String characterId);
}

class ItemsRepositoryImpl extends ItemsRepository {
  ItemsRepositoryImpl(this.localDatasourceImpl, this.remoteDatasourceImpl);

  final LocalCharacterDatasourceImpl localDatasourceImpl;
  final RemoteCharacterDatasourceImpl remoteDatasourceImpl;

  @override
  Future<List<CharacterEntity>> getAndCacheCharacterList() async {
    final data = await localDatasourceImpl.getCharacterList();
    late final result;
    if (data.isNotEmpty) {
      result = data;
    } else {
      result = await remoteDatasourceImpl.getCharactersList();
    }
    final list = List<Character>.empty(growable: true);
    final listEntity = List<CharacterEntity>.empty(growable: true);
    result.results.forEach((el) {
      list.add(
        Character(
          characterId: el.id.toString(),
          name: el.name,
          status: el.status,
          species: el.species,
          gender: el.gender,
          image: el.image,
          isSelected: false,
        ),
      );
      listEntity.add(
        CharacterEntity(
          id: el.id,
          name: el.name,
          status: el.status,
          species: el.species,
          type: el.type,
          gender: el.gender,
          image: el.gender,
          isSelected: false,
        ),
      );
    });

    await localDatasourceImpl.saveCharactersList(list);
    return listEntity;
  }

  @override
  Future<void> saveCharactersList(List<Character> characters) async {
    await localDatasourceImpl.saveCharactersList(characters);
  }

  @override
  Future<Character> getCharacterById(String characterId) async {
    final result = await localDatasourceImpl.getCharacterById(characterId);
    return result;
  }

  @override
  Future<void> setLikeById(String characterId) async {
    await localDatasourceImpl.setLikeById(characterId);
  }

  @override
  Future<void> removeLikeById(String characterId) async {
    await localDatasourceImpl.removeLikeById(characterId);
  }
}
