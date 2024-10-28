// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      count: json['count'] as int,
      pages: json['pages'] as int,
      next: json['next'] as String,
      prev: json['prev'],
    );

Map<String, dynamic> _$InfoToJson(Info instance) {
  final val = <String, dynamic>{
    'count': instance.count,
    'pages': instance.pages,
    'next': instance.next,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('prev', instance.prev);
  return val;
}
