import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'character_response.g.dart';

@JsonSerializable(createToJson: true)
class CharacterResponse {

  CharacterResponse({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    required this.location,
    required this.image,
    required this.episode,
    required this.url,
    required this.created,
  });
  factory CharacterResponse.fromJson(Map<String, dynamic> json) => _$CharacterResponseFromJson(json);

  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'status')
  final String status;
  @JsonKey(name: 'species')
  final String species;
  @JsonKey(name: 'type')
  final String type;
  @JsonKey(name: 'gender')
  final String gender;
  @JsonKey(name: 'origin')
  final Location origin;
  @JsonKey(name: 'location')
  final Location location;
  @JsonKey(name: 'image')
  final String image;
  @JsonKey(name: 'episode')
  final List<String> episode;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'created')
  final DateTime created;

  Map<String, dynamic> toJson() => _$CharacterResponseToJson(this);
}
