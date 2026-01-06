import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_response.freezed.dart';
part 'subjects_response.g.dart';

@freezed
abstract class SubjectsResponse with _$SubjectsResponse {
  const factory SubjectsResponse({
    @JsonKey(name: 'class_name') required String className,
    @JsonKey(name: 'subject_name') required String subjectName,
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required List<Chapter> chapters,
  }) = _SubjectsResponse;

  factory SubjectsResponse.fromJson(Map<String, dynamic> json) =>
      _$SubjectsResponseFromJson(json);
}

@freezed
abstract class Chapter with _$Chapter {
  const factory Chapter({
    required String no,
    required String name,
    @JsonKey(name: 'formatted_name') required String formattedName,
    required int id,
    @JsonKey(name: 'subject_id') required int subjectId,
    required List<Topic> topics,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
abstract class Topic with _$Topic {
  const factory Topic({
    required String no,
    required String name,
    @JsonKey(name: 'formatted_name') required String formattedName,
    required int id,
    @JsonKey(name: 'chapter_id') required int chapterId,
  }) = _Topic;

  factory Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);
}
