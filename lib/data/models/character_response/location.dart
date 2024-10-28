import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable(createToJson: true)
class Location {
  Location({
    required this.name,
    required this.url,
  });

  factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'url')
  final String url;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
