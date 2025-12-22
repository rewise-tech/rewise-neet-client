// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionResponse _$QuestionResponseFromJson(Map<String, dynamic> json) =>
    _QuestionResponse(
      source: json['source'] as String,
      year: json['year'] as String? ?? 'none',
      questionNumber: json['question_number'] as String? ?? 'none',
      questionText: json['question_text'] as String,
      hasDiagram: json['has_diagram'] as bool? ?? false,
      diagramDescription: json['diagram_description'] as String? ?? 'none',
      diagramPosition: json['diagram_position'] as String? ?? 'none',
      diagramName: json['diagram_name'] as String? ?? 'none',
      answer: json['answer'] as String? ?? 'none',
      solution: json['solution'] as String? ?? 'none',
      reviewed: json['reviewed'] as bool? ?? false,
      id: (json['id'] as num).toInt(),
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionResponseToJson(_QuestionResponse instance) =>
    <String, dynamic>{
      'source': instance.source,
      'year': instance.year,
      'question_number': instance.questionNumber,
      'question_text': instance.questionText,
      'has_diagram': instance.hasDiagram,
      'diagram_description': instance.diagramDescription,
      'diagram_position': instance.diagramPosition,
      'diagram_name': instance.diagramName,
      'answer': instance.answer,
      'solution': instance.solution,
      'reviewed': instance.reviewed,
      'id': instance.id,
      'options': instance.options,
    };

_Option _$OptionFromJson(Map<String, dynamic> json) => _Option(
  label: json['label'] as String,
  text: json['text'] as String? ?? 'none',
  hasDiagram: json['option_has_diagram'] as bool? ?? false,
  diagramDescription: json['option_diagram_description'] as String? ?? 'none',
  diagramName: json['option_diagram_name'] as String? ?? 'none',
  id: (json['id'] as num).toInt(),
  questionId: (json['question_id'] as num).toInt(),
);

Map<String, dynamic> _$OptionToJson(_Option instance) => <String, dynamic>{
  'label': instance.label,
  'text': instance.text,
  'option_has_diagram': instance.hasDiagram,
  'option_diagram_description': instance.diagramDescription,
  'option_diagram_name': instance.diagramName,
  'id': instance.id,
  'question_id': instance.questionId,
};
