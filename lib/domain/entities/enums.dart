enum Gender { FEMALE, MALE, UNKNOWN }

final genderValues = EnumValues({'Female': Gender.FEMALE, 'Male': Gender.MALE, 'unknown': Gender.UNKNOWN});

enum Species { ALIEN, HUMAN }

final speciesValues = EnumValues({'Alien': Species.ALIEN, 'Human': Species.HUMAN});

enum Status { ALIVE, DEAD, UNKNOWN }

final statusValues = EnumValues({'Alive': Status.ALIVE, 'Dead': Status.DEAD, 'unknown': Status.UNKNOWN});

class EnumValues<T> {

  EnumValues(this.map);
  Map<String, T> map;
  late Map<T, String> reverseMap;

  Map<T, String> get reverse => reverseMap = map.map((k, v) => MapEntry(v, k));
}
