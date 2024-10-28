import 'package:json_annotation/json_annotation.dart';

part 'info.g.dart';

@JsonSerializable(createToJson: true)
class Info {
  Info({
    required this.count,
    required this.pages,
    required this.next,
    required this.prev,
  });

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);

  @JsonKey(name: 'count')
  final int count;
  @JsonKey(name: 'pages')
  final int pages;
  @JsonKey(name: 'next')
  final String next;
  @JsonKey(name: 'prev')
  final dynamic prev;

  Map<String, dynamic> toJson() => _$InfoToJson(this);
}
