// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$QuestionsResponse {

 int get id; String get source; String get year; String get subject; String get chapter; String? get topic;@JsonKey(name: 'question_number') String get questionNumber;@JsonKey(name: 'question_text') String get questionText; bool get reviewed; String get answer;@JsonKey(name: 'ai_answer') String? get aiAnswer; String get solution; List<QuestionOption> get options;
/// Create a copy of QuestionsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionsResponseCopyWith<QuestionsResponse> get copyWith => _$QuestionsResponseCopyWithImpl<QuestionsResponse>(this as QuestionsResponse, _$identity);

  /// Serializes this QuestionsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.questionNumber, questionNumber) || other.questionNumber == questionNumber)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.aiAnswer, aiAnswer) || other.aiAnswer == aiAnswer)&&(identical(other.solution, solution) || other.solution == solution)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,source,year,subject,chapter,topic,questionNumber,questionText,reviewed,answer,aiAnswer,solution,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'QuestionsResponse(id: $id, source: $source, year: $year, subject: $subject, chapter: $chapter, topic: $topic, questionNumber: $questionNumber, questionText: $questionText, reviewed: $reviewed, answer: $answer, aiAnswer: $aiAnswer, solution: $solution, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuestionsResponseCopyWith<$Res>  {
  factory $QuestionsResponseCopyWith(QuestionsResponse value, $Res Function(QuestionsResponse) _then) = _$QuestionsResponseCopyWithImpl;
@useResult
$Res call({
 int id, String source, String year, String subject, String chapter, String? topic,@JsonKey(name: 'question_number') String questionNumber,@JsonKey(name: 'question_text') String questionText, bool reviewed, String answer,@JsonKey(name: 'ai_answer') String? aiAnswer, String solution, List<QuestionOption> options
});




}
/// @nodoc
class _$QuestionsResponseCopyWithImpl<$Res>
    implements $QuestionsResponseCopyWith<$Res> {
  _$QuestionsResponseCopyWithImpl(this._self, this._then);

  final QuestionsResponse _self;
  final $Res Function(QuestionsResponse) _then;

/// Create a copy of QuestionsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? source = null,Object? year = null,Object? subject = null,Object? chapter = null,Object? topic = freezed,Object? questionNumber = null,Object? questionText = null,Object? reviewed = null,Object? answer = null,Object? aiAnswer = freezed,Object? solution = null,Object? options = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,questionNumber: null == questionNumber ? _self.questionNumber : questionNumber // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,aiAnswer: freezed == aiAnswer ? _self.aiAnswer : aiAnswer // ignore: cast_nullable_to_non_nullable
as String?,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<QuestionOption>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionsResponse].
extension QuestionsResponsePatterns on QuestionsResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionsResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionsResponse value)  $default,){
final _that = this;
switch (_that) {
case _QuestionsResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionsResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String source,  String year,  String subject,  String chapter,  String? topic, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText,  bool reviewed,  String answer, @JsonKey(name: 'ai_answer')  String? aiAnswer,  String solution,  List<QuestionOption> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionsResponse() when $default != null:
return $default(_that.id,_that.source,_that.year,_that.subject,_that.chapter,_that.topic,_that.questionNumber,_that.questionText,_that.reviewed,_that.answer,_that.aiAnswer,_that.solution,_that.options);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String source,  String year,  String subject,  String chapter,  String? topic, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText,  bool reviewed,  String answer, @JsonKey(name: 'ai_answer')  String? aiAnswer,  String solution,  List<QuestionOption> options)  $default,) {final _that = this;
switch (_that) {
case _QuestionsResponse():
return $default(_that.id,_that.source,_that.year,_that.subject,_that.chapter,_that.topic,_that.questionNumber,_that.questionText,_that.reviewed,_that.answer,_that.aiAnswer,_that.solution,_that.options);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String source,  String year,  String subject,  String chapter,  String? topic, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText,  bool reviewed,  String answer, @JsonKey(name: 'ai_answer')  String? aiAnswer,  String solution,  List<QuestionOption> options)?  $default,) {final _that = this;
switch (_that) {
case _QuestionsResponse() when $default != null:
return $default(_that.id,_that.source,_that.year,_that.subject,_that.chapter,_that.topic,_that.questionNumber,_that.questionText,_that.reviewed,_that.answer,_that.aiAnswer,_that.solution,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionsResponse implements QuestionsResponse {
  const _QuestionsResponse({required this.id, required this.source, required this.year, required this.subject, required this.chapter, this.topic, @JsonKey(name: 'question_number') required this.questionNumber, @JsonKey(name: 'question_text') required this.questionText, required this.reviewed, required this.answer, @JsonKey(name: 'ai_answer') this.aiAnswer, required this.solution, required final  List<QuestionOption> options}): _options = options;
  factory _QuestionsResponse.fromJson(Map<String, dynamic> json) => _$QuestionsResponseFromJson(json);

@override final  int id;
@override final  String source;
@override final  String year;
@override final  String subject;
@override final  String chapter;
@override final  String? topic;
@override@JsonKey(name: 'question_number') final  String questionNumber;
@override@JsonKey(name: 'question_text') final  String questionText;
@override final  bool reviewed;
@override final  String answer;
@override@JsonKey(name: 'ai_answer') final  String? aiAnswer;
@override final  String solution;
 final  List<QuestionOption> _options;
@override List<QuestionOption> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of QuestionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionsResponseCopyWith<_QuestionsResponse> get copyWith => __$QuestionsResponseCopyWithImpl<_QuestionsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionsResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.chapter, chapter) || other.chapter == chapter)&&(identical(other.topic, topic) || other.topic == topic)&&(identical(other.questionNumber, questionNumber) || other.questionNumber == questionNumber)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.aiAnswer, aiAnswer) || other.aiAnswer == aiAnswer)&&(identical(other.solution, solution) || other.solution == solution)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,source,year,subject,chapter,topic,questionNumber,questionText,reviewed,answer,aiAnswer,solution,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'QuestionsResponse(id: $id, source: $source, year: $year, subject: $subject, chapter: $chapter, topic: $topic, questionNumber: $questionNumber, questionText: $questionText, reviewed: $reviewed, answer: $answer, aiAnswer: $aiAnswer, solution: $solution, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuestionsResponseCopyWith<$Res> implements $QuestionsResponseCopyWith<$Res> {
  factory _$QuestionsResponseCopyWith(_QuestionsResponse value, $Res Function(_QuestionsResponse) _then) = __$QuestionsResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String source, String year, String subject, String chapter, String? topic,@JsonKey(name: 'question_number') String questionNumber,@JsonKey(name: 'question_text') String questionText, bool reviewed, String answer,@JsonKey(name: 'ai_answer') String? aiAnswer, String solution, List<QuestionOption> options
});




}
/// @nodoc
class __$QuestionsResponseCopyWithImpl<$Res>
    implements _$QuestionsResponseCopyWith<$Res> {
  __$QuestionsResponseCopyWithImpl(this._self, this._then);

  final _QuestionsResponse _self;
  final $Res Function(_QuestionsResponse) _then;

/// Create a copy of QuestionsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? source = null,Object? year = null,Object? subject = null,Object? chapter = null,Object? topic = freezed,Object? questionNumber = null,Object? questionText = null,Object? reviewed = null,Object? answer = null,Object? aiAnswer = freezed,Object? solution = null,Object? options = null,}) {
  return _then(_QuestionsResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,chapter: null == chapter ? _self.chapter : chapter // ignore: cast_nullable_to_non_nullable
as String,topic: freezed == topic ? _self.topic : topic // ignore: cast_nullable_to_non_nullable
as String?,questionNumber: null == questionNumber ? _self.questionNumber : questionNumber // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,aiAnswer: freezed == aiAnswer ? _self.aiAnswer : aiAnswer // ignore: cast_nullable_to_non_nullable
as String?,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<QuestionOption>,
  ));
}


}


/// @nodoc
mixin _$QuestionOption {

 int get id;@JsonKey(name: 'question_id') int get questionId; String get label; String get text;@JsonKey(name: 'has_diagram') bool get hasDiagram;@JsonKey(name: 'diagram_description') String? get diagramDescription;@JsonKey(name: 'diagram_name') String? get diagramName;
/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionOptionCopyWith<QuestionOption> get copyWith => _$QuestionOptionCopyWithImpl<QuestionOption>(this as QuestionOption, _$identity);

  /// Serializes this QuestionOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.label, label) || other.label == label)&&(identical(other.text, text) || other.text == text)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionId,label,text,hasDiagram,diagramDescription,diagramName);

@override
String toString() {
  return 'QuestionOption(id: $id, questionId: $questionId, label: $label, text: $text, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramName: $diagramName)';
}


}

/// @nodoc
abstract mixin class $QuestionOptionCopyWith<$Res>  {
  factory $QuestionOptionCopyWith(QuestionOption value, $Res Function(QuestionOption) _then) = _$QuestionOptionCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'question_id') int questionId, String label, String text,@JsonKey(name: 'has_diagram') bool hasDiagram,@JsonKey(name: 'diagram_description') String? diagramDescription,@JsonKey(name: 'diagram_name') String? diagramName
});




}
/// @nodoc
class _$QuestionOptionCopyWithImpl<$Res>
    implements $QuestionOptionCopyWith<$Res> {
  _$QuestionOptionCopyWithImpl(this._self, this._then);

  final QuestionOption _self;
  final $Res Function(QuestionOption) _then;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? questionId = null,Object? label = null,Object? text = null,Object? hasDiagram = null,Object? diagramDescription = freezed,Object? diagramName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: freezed == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String?,diagramName: freezed == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionOption].
extension QuestionOptionPatterns on QuestionOption {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionOption value)  $default,){
final _that = this;
switch (_that) {
case _QuestionOption():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionOption value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'question_id')  int questionId,  String label,  String text, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String? diagramDescription, @JsonKey(name: 'diagram_name')  String? diagramName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that.id,_that.questionId,_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'question_id')  int questionId,  String label,  String text, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String? diagramDescription, @JsonKey(name: 'diagram_name')  String? diagramName)  $default,) {final _that = this;
switch (_that) {
case _QuestionOption():
return $default(_that.id,_that.questionId,_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'question_id')  int questionId,  String label,  String text, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String? diagramDescription, @JsonKey(name: 'diagram_name')  String? diagramName)?  $default,) {final _that = this;
switch (_that) {
case _QuestionOption() when $default != null:
return $default(_that.id,_that.questionId,_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionOption implements QuestionOption {
  const _QuestionOption({required this.id, @JsonKey(name: 'question_id') required this.questionId, required this.label, required this.text, @JsonKey(name: 'has_diagram') required this.hasDiagram, @JsonKey(name: 'diagram_description') this.diagramDescription, @JsonKey(name: 'diagram_name') this.diagramName});
  factory _QuestionOption.fromJson(Map<String, dynamic> json) => _$QuestionOptionFromJson(json);

@override final  int id;
@override@JsonKey(name: 'question_id') final  int questionId;
@override final  String label;
@override final  String text;
@override@JsonKey(name: 'has_diagram') final  bool hasDiagram;
@override@JsonKey(name: 'diagram_description') final  String? diagramDescription;
@override@JsonKey(name: 'diagram_name') final  String? diagramName;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionOptionCopyWith<_QuestionOption> get copyWith => __$QuestionOptionCopyWithImpl<_QuestionOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionOption&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId)&&(identical(other.label, label) || other.label == label)&&(identical(other.text, text) || other.text == text)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,questionId,label,text,hasDiagram,diagramDescription,diagramName);

@override
String toString() {
  return 'QuestionOption(id: $id, questionId: $questionId, label: $label, text: $text, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramName: $diagramName)';
}


}

/// @nodoc
abstract mixin class _$QuestionOptionCopyWith<$Res> implements $QuestionOptionCopyWith<$Res> {
  factory _$QuestionOptionCopyWith(_QuestionOption value, $Res Function(_QuestionOption) _then) = __$QuestionOptionCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'question_id') int questionId, String label, String text,@JsonKey(name: 'has_diagram') bool hasDiagram,@JsonKey(name: 'diagram_description') String? diagramDescription,@JsonKey(name: 'diagram_name') String? diagramName
});




}
/// @nodoc
class __$QuestionOptionCopyWithImpl<$Res>
    implements _$QuestionOptionCopyWith<$Res> {
  __$QuestionOptionCopyWithImpl(this._self, this._then);

  final _QuestionOption _self;
  final $Res Function(_QuestionOption) _then;

/// Create a copy of QuestionOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? questionId = null,Object? label = null,Object? text = null,Object? hasDiagram = null,Object? diagramDescription = freezed,Object? diagramName = freezed,}) {
  return _then(_QuestionOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: freezed == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String?,diagramName: freezed == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
