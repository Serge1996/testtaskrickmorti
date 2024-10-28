import 'package:hive/hive.dart';
import 'package:testtaskrickmorti/data/datasources/local/hive_names.dart';

import '../../../domain/hive_entities/character.dart';

abstract class LocalCharacterDatasource {
  Future<void> saveCharactersList(List<Character> characters);

  Future<List<Character>> getCharacterList();

  Future<Character> getCharacterById(String characterId);

  Future<void> removeLikeById(String characterId);
}

class LocalCharacterDatasourceImpl extends LocalCharacterDatasource {
  LocalCharacterDatasourceImpl();

  @override
  Future<List<Character>> getCharacterList() async {
    final box = await Hive.openBox<Character>(HiveBoxes.characterBox);
    final result = box.values.toList();

    await box.close();
    return result;
  }

  @override
  Future<void> saveCharactersList(List<Character> characters) async {
    final box = await Hive.openBox<Character>(HiveBoxes.characterBox);
    await box.addAll(characters.asMap().values);
    await box.close();
  }

  @override
  Future<Character> getCharacterById(String characterId) async {
    final box = await Hive.openBox<Character>(HiveBoxes.characterBox);
    final result = box.values.firstWhere((el) => el.characterId == characterId);
    await box.close();
    return result;
  }

  @override
  Future<void> setLikeById(String characterId) async {
    final box = await Hive.openBox<Character>(HiveBoxes.characterBox);
    final character = box.values.firstWhere((element) => element.characterId == characterId);
    final key = character.key;
    await box.putAt(key, character.copyWith(isSelected: true));
    await box.close();
  }

  @override
  Future<void> removeLikeById(String characterId) async {
    final box = await Hive.openBox<Character>(HiveBoxes.characterBox);
    final character = box.values.firstWhere((element) => element.characterId == characterId);
    final key = character.key;
    await box.putAt(key, character.copyWith(isSelected: false));
    await box.close();
  }
}
