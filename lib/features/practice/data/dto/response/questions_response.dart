import 'package:freezed_annotation/freezed_annotation.dart';

part 'questions_response.freezed.dart';
part 'questions_response.g.dart';

@freezed
abstract class QuestionResponse with _$QuestionResponse {
  const factory QuestionResponse({
    @JsonKey(name: 'source') required String source,
    @JsonKey(name: 'year') @Default('none') String year,
    @JsonKey(name: 'question_number') @Default('none') String questionNumber,
    @JsonKey(name: 'question_text') required String questionText,
    @JsonKey(name: 'has_diagram') @Default(false) bool hasDiagram,
    @JsonKey(name: 'diagram_description')
    @Default('none')
    String diagramDescription,
    @JsonKey(name: 'diagram_position') @Default('none') String diagramPosition,
    @JsonKey(name: 'diagram_name') @Default('none') String diagramName,
    @JsonKey(name: 'answer') @Default('none') String answer,
    @JsonKey(name: 'solution') @Default('none') String solution,
    @JsonKey(name: 'reviewed') @Default(false) bool reviewed,
    @JsonKey(name: 'id') required int id,
    required List<Option> options,
  }) = _QuestionResponse;

  factory QuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionResponseFromJson(json);
}

@freezed
abstract class Option with _$Option {
  const factory Option({
    @JsonKey(name: 'label') required String label,
    @JsonKey(name: 'text') @Default('none') String text,
    @JsonKey(name: 'option_has_diagram') @Default(false) bool hasDiagram,
    @JsonKey(name: 'option_diagram_description')
    @Default('none')
    String diagramDescription,
    @JsonKey(name: 'option_diagram_name') @Default('none') String diagramName,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'question_id') required int questionId,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}
