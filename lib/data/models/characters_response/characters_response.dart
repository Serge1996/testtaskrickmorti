import 'package:json_annotation/json_annotation.dart';

import '../character_response/character_response.dart';
import 'info.dart';

part 'characters_response.g.dart';

@JsonSerializable(createToJson: true)
class CharactersResponse {
  CharactersResponse({
    required this.info,
    required this.results,
  });

  factory CharactersResponse.fromJson(Map<String, dynamic> json) => _$CharactersResponseFromJson(json);
  @JsonKey(name: 'info')
  final Info info;
  @JsonKey(name: 'results')
  final List<CharacterResponse> results;

  Map<String, dynamic> toJson() => _$CharactersResponseToJson(this);
}
