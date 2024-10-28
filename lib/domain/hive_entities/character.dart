import 'package:hive/hive.dart';

part 'character.g.dart';

@HiveType(typeId: 0)
class Character extends HiveObject {
  Character({
    required this.characterId,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
    required this.isSelected,
  });

  @HiveField(0)
  final String characterId;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String status;
  @HiveField(3)
  final String species;
  @HiveField(4)
  final String gender;
  @HiveField(5)
  final String image;
  @HiveField(6)
  final bool isSelected;

  Character copyWith({
    required bool? isSelected,
    String? characterId,
    String? name,
    String? status,
    String? species,
    String? gender,
    String? image,
  }) =>
      Character(
        characterId: characterId ?? this.characterId,
        name: name ?? this.name,
        status: status ?? this.status,
        species: species ?? this.species,
        gender: gender ?? this.gender,
        image: image ?? this.image,
        isSelected: isSelected ?? this.isSelected,
      );

  @override
  String toString() =>
      'characterId: $characterId,\n name: $name,\n status: $status,\n species: $species,\n gender: $gender,'
      '\n image: $image,\n comment: $isSelected';
}
