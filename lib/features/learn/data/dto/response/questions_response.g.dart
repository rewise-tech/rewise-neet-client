// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_QuestionsResponse _$QuestionsResponseFromJson(Map<String, dynamic> json) =>
    _QuestionsResponse(
      id: (json['id'] as num).toInt(),
      source: json['source'] as String,
      year: json['year'] as String,
      subject: json['subject'] as String,
      chapter: json['chapter'] as String,
      topic: json['topic'] as String?,
      questionNumber: json['question_number'] as String,
      questionText: json['question_text'] as String,
      reviewed: json['reviewed'] as bool,
      answer: json['answer'] as String,
      aiAnswer: json['ai_answer'] as String?,
      solution: json['solution'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => QuestionOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuestionsResponseToJson(_QuestionsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'year': instance.year,
      'subject': instance.subject,
      'chapter': instance.chapter,
      'topic': instance.topic,
      'question_number': instance.questionNumber,
      'question_text': instance.questionText,
      'reviewed': instance.reviewed,
      'answer': instance.answer,
      'ai_answer': instance.aiAnswer,
      'solution': instance.solution,
      'options': instance.options,
    };

_QuestionOption _$QuestionOptionFromJson(Map<String, dynamic> json) =>
    _QuestionOption(
      id: (json['id'] as num).toInt(),
      questionId: (json['question_id'] as num).toInt(),
      label: json['label'] as String,
      text: json['text'] as String,
      hasDiagram: json['has_diagram'] as bool,
      diagramDescription: json['diagram_description'] as String?,
      diagramName: json['diagram_name'] as String?,
    );

Map<String, dynamic> _$QuestionOptionToJson(_QuestionOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_id': instance.questionId,
      'label': instance.label,
      'text': instance.text,
      'has_diagram': instance.hasDiagram,
      'diagram_description': instance.diagramDescription,
      'diagram_name': instance.diagramName,
    };
