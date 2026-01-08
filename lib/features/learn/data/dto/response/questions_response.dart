import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_response.freezed.dart';
part 'questions_response.g.dart';

@freezed
abstract class QuestionsResponse with _$QuestionsResponse {
  const factory QuestionsResponse({
    required int id,
    required String source,
    required String year,
    required String subject,
    required String chapter,
    String? topic,
    @JsonKey(name: 'question_number') required String questionNumber,
    @JsonKey(name: 'question_text') required String questionText,
    required bool reviewed,
    required String answer,

    @JsonKey(name: 'ai_answer') String? aiAnswer,

    required String solution,
    required List<QuestionOption> options,
  }) = _QuestionsResponse;

  factory QuestionsResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionsResponseFromJson(json);
}

@freezed
abstract class QuestionOption with _$QuestionOption {
  const factory QuestionOption({
    required int id,

    @JsonKey(name: 'question_id') required int questionId,

    required String label,
    required String text,

    @JsonKey(name: 'has_diagram') required bool hasDiagram,

    @JsonKey(name: 'diagram_description') String? diagramDescription,

    @JsonKey(name: 'diagram_name') String? diagramName,
  }) = _QuestionOption;

  factory QuestionOption.fromJson(Map<String, dynamic> json) =>
      _$QuestionOptionFromJson(json);
}
