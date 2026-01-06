// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubjectsResponse _$SubjectsResponseFromJson(Map<String, dynamic> json) =>
    _SubjectsResponse(
      className: json['class_name'] as String,
      subjectName: json['subject_name'] as String,
      id: (json['id'] as num).toInt(),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      chapters: (json['chapters'] as List<dynamic>)
          .map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubjectsResponseToJson(_SubjectsResponse instance) =>
    <String, dynamic>{
      'class_name': instance.className,
      'subject_name': instance.subjectName,
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'chapters': instance.chapters,
    };

_Chapter _$ChapterFromJson(Map<String, dynamic> json) => _Chapter(
  no: json['no'] as String,
  name: json['name'] as String,
  formattedName: json['formatted_name'] as String,
  id: (json['id'] as num).toInt(),
  subjectId: (json['subject_id'] as num).toInt(),
  topics: (json['topics'] as List<dynamic>)
      .map((e) => Topic.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ChapterToJson(_Chapter instance) => <String, dynamic>{
  'no': instance.no,
  'name': instance.name,
  'formatted_name': instance.formattedName,
  'id': instance.id,
  'subject_id': instance.subjectId,
  'topics': instance.topics,
};

_Topic _$TopicFromJson(Map<String, dynamic> json) => _Topic(
  no: json['no'] as String,
  name: json['name'] as String,
  formattedName: json['formatted_name'] as String,
  id: (json['id'] as num).toInt(),
  chapterId: (json['chapter_id'] as num).toInt(),
);

Map<String, dynamic> _$TopicToJson(_Topic instance) => <String, dynamic>{
  'no': instance.no,
  'name': instance.name,
  'formatted_name': instance.formattedName,
  'id': instance.id,
  'chapter_id': instance.chapterId,
};
