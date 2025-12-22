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
mixin _$QuestionResponse {

@JsonKey(name: 'source') String get source;@JsonKey(name: 'year') String get year;@JsonKey(name: 'question_number') String get questionNumber;@JsonKey(name: 'question_text') String get questionText;@JsonKey(name: 'has_diagram') bool get hasDiagram;@JsonKey(name: 'diagram_description') String get diagramDescription;@JsonKey(name: 'diagram_position') String get diagramPosition;@JsonKey(name: 'diagram_name') String get diagramName;@JsonKey(name: 'answer') String get answer;@JsonKey(name: 'solution') String get solution;@JsonKey(name: 'reviewed') bool get reviewed;@JsonKey(name: 'id') int get id; List<Option> get options;
/// Create a copy of QuestionResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuestionResponseCopyWith<QuestionResponse> get copyWith => _$QuestionResponseCopyWithImpl<QuestionResponse>(this as QuestionResponse, _$identity);

  /// Serializes this QuestionResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionResponse&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.questionNumber, questionNumber) || other.questionNumber == questionNumber)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramPosition, diagramPosition) || other.diagramPosition == diagramPosition)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.solution, solution) || other.solution == solution)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.options, options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,year,questionNumber,questionText,hasDiagram,diagramDescription,diagramPosition,diagramName,answer,solution,reviewed,id,const DeepCollectionEquality().hash(options));

@override
String toString() {
  return 'QuestionResponse(source: $source, year: $year, questionNumber: $questionNumber, questionText: $questionText, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramPosition: $diagramPosition, diagramName: $diagramName, answer: $answer, solution: $solution, reviewed: $reviewed, id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class $QuestionResponseCopyWith<$Res>  {
  factory $QuestionResponseCopyWith(QuestionResponse value, $Res Function(QuestionResponse) _then) = _$QuestionResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'source') String source,@JsonKey(name: 'year') String year,@JsonKey(name: 'question_number') String questionNumber,@JsonKey(name: 'question_text') String questionText,@JsonKey(name: 'has_diagram') bool hasDiagram,@JsonKey(name: 'diagram_description') String diagramDescription,@JsonKey(name: 'diagram_position') String diagramPosition,@JsonKey(name: 'diagram_name') String diagramName,@JsonKey(name: 'answer') String answer,@JsonKey(name: 'solution') String solution,@JsonKey(name: 'reviewed') bool reviewed,@JsonKey(name: 'id') int id, List<Option> options
});




}
/// @nodoc
class _$QuestionResponseCopyWithImpl<$Res>
    implements $QuestionResponseCopyWith<$Res> {
  _$QuestionResponseCopyWithImpl(this._self, this._then);

  final QuestionResponse _self;
  final $Res Function(QuestionResponse) _then;

/// Create a copy of QuestionResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? year = null,Object? questionNumber = null,Object? questionText = null,Object? hasDiagram = null,Object? diagramDescription = null,Object? diagramPosition = null,Object? diagramName = null,Object? answer = null,Object? solution = null,Object? reviewed = null,Object? id = null,Object? options = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,questionNumber: null == questionNumber ? _self.questionNumber : questionNumber // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: null == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String,diagramPosition: null == diagramPosition ? _self.diagramPosition : diagramPosition // ignore: cast_nullable_to_non_nullable
as String,diagramName: null == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<Option>,
  ));
}

}


/// Adds pattern-matching-related methods to [QuestionResponse].
extension QuestionResponsePatterns on QuestionResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuestionResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuestionResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuestionResponse value)  $default,){
final _that = this;
switch (_that) {
case _QuestionResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuestionResponse value)?  $default,){
final _that = this;
switch (_that) {
case _QuestionResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'source')  String source, @JsonKey(name: 'year')  String year, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String diagramDescription, @JsonKey(name: 'diagram_position')  String diagramPosition, @JsonKey(name: 'diagram_name')  String diagramName, @JsonKey(name: 'answer')  String answer, @JsonKey(name: 'solution')  String solution, @JsonKey(name: 'reviewed')  bool reviewed, @JsonKey(name: 'id')  int id,  List<Option> options)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuestionResponse() when $default != null:
return $default(_that.source,_that.year,_that.questionNumber,_that.questionText,_that.hasDiagram,_that.diagramDescription,_that.diagramPosition,_that.diagramName,_that.answer,_that.solution,_that.reviewed,_that.id,_that.options);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'source')  String source, @JsonKey(name: 'year')  String year, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String diagramDescription, @JsonKey(name: 'diagram_position')  String diagramPosition, @JsonKey(name: 'diagram_name')  String diagramName, @JsonKey(name: 'answer')  String answer, @JsonKey(name: 'solution')  String solution, @JsonKey(name: 'reviewed')  bool reviewed, @JsonKey(name: 'id')  int id,  List<Option> options)  $default,) {final _that = this;
switch (_that) {
case _QuestionResponse():
return $default(_that.source,_that.year,_that.questionNumber,_that.questionText,_that.hasDiagram,_that.diagramDescription,_that.diagramPosition,_that.diagramName,_that.answer,_that.solution,_that.reviewed,_that.id,_that.options);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'source')  String source, @JsonKey(name: 'year')  String year, @JsonKey(name: 'question_number')  String questionNumber, @JsonKey(name: 'question_text')  String questionText, @JsonKey(name: 'has_diagram')  bool hasDiagram, @JsonKey(name: 'diagram_description')  String diagramDescription, @JsonKey(name: 'diagram_position')  String diagramPosition, @JsonKey(name: 'diagram_name')  String diagramName, @JsonKey(name: 'answer')  String answer, @JsonKey(name: 'solution')  String solution, @JsonKey(name: 'reviewed')  bool reviewed, @JsonKey(name: 'id')  int id,  List<Option> options)?  $default,) {final _that = this;
switch (_that) {
case _QuestionResponse() when $default != null:
return $default(_that.source,_that.year,_that.questionNumber,_that.questionText,_that.hasDiagram,_that.diagramDescription,_that.diagramPosition,_that.diagramName,_that.answer,_that.solution,_that.reviewed,_that.id,_that.options);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _QuestionResponse implements QuestionResponse {
  const _QuestionResponse({@JsonKey(name: 'source') required this.source, @JsonKey(name: 'year') this.year = 'none', @JsonKey(name: 'question_number') this.questionNumber = 'none', @JsonKey(name: 'question_text') required this.questionText, @JsonKey(name: 'has_diagram') this.hasDiagram = false, @JsonKey(name: 'diagram_description') this.diagramDescription = 'none', @JsonKey(name: 'diagram_position') this.diagramPosition = 'none', @JsonKey(name: 'diagram_name') this.diagramName = 'none', @JsonKey(name: 'answer') this.answer = 'none', @JsonKey(name: 'solution') this.solution = 'none', @JsonKey(name: 'reviewed') this.reviewed = false, @JsonKey(name: 'id') required this.id, required final  List<Option> options}): _options = options;
  factory _QuestionResponse.fromJson(Map<String, dynamic> json) => _$QuestionResponseFromJson(json);

@override@JsonKey(name: 'source') final  String source;
@override@JsonKey(name: 'year') final  String year;
@override@JsonKey(name: 'question_number') final  String questionNumber;
@override@JsonKey(name: 'question_text') final  String questionText;
@override@JsonKey(name: 'has_diagram') final  bool hasDiagram;
@override@JsonKey(name: 'diagram_description') final  String diagramDescription;
@override@JsonKey(name: 'diagram_position') final  String diagramPosition;
@override@JsonKey(name: 'diagram_name') final  String diagramName;
@override@JsonKey(name: 'answer') final  String answer;
@override@JsonKey(name: 'solution') final  String solution;
@override@JsonKey(name: 'reviewed') final  bool reviewed;
@override@JsonKey(name: 'id') final  int id;
 final  List<Option> _options;
@override List<Option> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of QuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuestionResponseCopyWith<_QuestionResponse> get copyWith => __$QuestionResponseCopyWithImpl<_QuestionResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$QuestionResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuestionResponse&&(identical(other.source, source) || other.source == source)&&(identical(other.year, year) || other.year == year)&&(identical(other.questionNumber, questionNumber) || other.questionNumber == questionNumber)&&(identical(other.questionText, questionText) || other.questionText == questionText)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramPosition, diagramPosition) || other.diagramPosition == diagramPosition)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName)&&(identical(other.answer, answer) || other.answer == answer)&&(identical(other.solution, solution) || other.solution == solution)&&(identical(other.reviewed, reviewed) || other.reviewed == reviewed)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._options, _options));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,year,questionNumber,questionText,hasDiagram,diagramDescription,diagramPosition,diagramName,answer,solution,reviewed,id,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'QuestionResponse(source: $source, year: $year, questionNumber: $questionNumber, questionText: $questionText, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramPosition: $diagramPosition, diagramName: $diagramName, answer: $answer, solution: $solution, reviewed: $reviewed, id: $id, options: $options)';
}


}

/// @nodoc
abstract mixin class _$QuestionResponseCopyWith<$Res> implements $QuestionResponseCopyWith<$Res> {
  factory _$QuestionResponseCopyWith(_QuestionResponse value, $Res Function(_QuestionResponse) _then) = __$QuestionResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'source') String source,@JsonKey(name: 'year') String year,@JsonKey(name: 'question_number') String questionNumber,@JsonKey(name: 'question_text') String questionText,@JsonKey(name: 'has_diagram') bool hasDiagram,@JsonKey(name: 'diagram_description') String diagramDescription,@JsonKey(name: 'diagram_position') String diagramPosition,@JsonKey(name: 'diagram_name') String diagramName,@JsonKey(name: 'answer') String answer,@JsonKey(name: 'solution') String solution,@JsonKey(name: 'reviewed') bool reviewed,@JsonKey(name: 'id') int id, List<Option> options
});




}
/// @nodoc
class __$QuestionResponseCopyWithImpl<$Res>
    implements _$QuestionResponseCopyWith<$Res> {
  __$QuestionResponseCopyWithImpl(this._self, this._then);

  final _QuestionResponse _self;
  final $Res Function(_QuestionResponse) _then;

/// Create a copy of QuestionResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? year = null,Object? questionNumber = null,Object? questionText = null,Object? hasDiagram = null,Object? diagramDescription = null,Object? diagramPosition = null,Object? diagramName = null,Object? answer = null,Object? solution = null,Object? reviewed = null,Object? id = null,Object? options = null,}) {
  return _then(_QuestionResponse(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,questionNumber: null == questionNumber ? _self.questionNumber : questionNumber // ignore: cast_nullable_to_non_nullable
as String,questionText: null == questionText ? _self.questionText : questionText // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: null == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String,diagramPosition: null == diagramPosition ? _self.diagramPosition : diagramPosition // ignore: cast_nullable_to_non_nullable
as String,diagramName: null == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String,answer: null == answer ? _self.answer : answer // ignore: cast_nullable_to_non_nullable
as String,solution: null == solution ? _self.solution : solution // ignore: cast_nullable_to_non_nullable
as String,reviewed: null == reviewed ? _self.reviewed : reviewed // ignore: cast_nullable_to_non_nullable
as bool,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<Option>,
  ));
}


}


/// @nodoc
mixin _$Option {

@JsonKey(name: 'label') String get label;@JsonKey(name: 'text') String get text;@JsonKey(name: 'option_has_diagram') bool get hasDiagram;@JsonKey(name: 'option_diagram_description') String get diagramDescription;@JsonKey(name: 'option_diagram_name') String get diagramName;@JsonKey(name: 'id') int get id;@JsonKey(name: 'question_id') int get questionId;
/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OptionCopyWith<Option> get copyWith => _$OptionCopyWithImpl<Option>(this as Option, _$identity);

  /// Serializes this Option to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Option&&(identical(other.label, label) || other.label == label)&&(identical(other.text, text) || other.text == text)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName)&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,text,hasDiagram,diagramDescription,diagramName,id,questionId);

@override
String toString() {
  return 'Option(label: $label, text: $text, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramName: $diagramName, id: $id, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class $OptionCopyWith<$Res>  {
  factory $OptionCopyWith(Option value, $Res Function(Option) _then) = _$OptionCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'text') String text,@JsonKey(name: 'option_has_diagram') bool hasDiagram,@JsonKey(name: 'option_diagram_description') String diagramDescription,@JsonKey(name: 'option_diagram_name') String diagramName,@JsonKey(name: 'id') int id,@JsonKey(name: 'question_id') int questionId
});




}
/// @nodoc
class _$OptionCopyWithImpl<$Res>
    implements $OptionCopyWith<$Res> {
  _$OptionCopyWithImpl(this._self, this._then);

  final Option _self;
  final $Res Function(Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? text = null,Object? hasDiagram = null,Object? diagramDescription = null,Object? diagramName = null,Object? id = null,Object? questionId = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: null == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String,diagramName: null == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Option].
extension OptionPatterns on Option {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Option value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Option value)  $default,){
final _that = this;
switch (_that) {
case _Option():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Option value)?  $default,){
final _that = this;
switch (_that) {
case _Option() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'text')  String text, @JsonKey(name: 'option_has_diagram')  bool hasDiagram, @JsonKey(name: 'option_diagram_description')  String diagramDescription, @JsonKey(name: 'option_diagram_name')  String diagramName, @JsonKey(name: 'id')  int id, @JsonKey(name: 'question_id')  int questionId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Option() when $default != null:
return $default(_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName,_that.id,_that.questionId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'text')  String text, @JsonKey(name: 'option_has_diagram')  bool hasDiagram, @JsonKey(name: 'option_diagram_description')  String diagramDescription, @JsonKey(name: 'option_diagram_name')  String diagramName, @JsonKey(name: 'id')  int id, @JsonKey(name: 'question_id')  int questionId)  $default,) {final _that = this;
switch (_that) {
case _Option():
return $default(_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName,_that.id,_that.questionId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'label')  String label, @JsonKey(name: 'text')  String text, @JsonKey(name: 'option_has_diagram')  bool hasDiagram, @JsonKey(name: 'option_diagram_description')  String diagramDescription, @JsonKey(name: 'option_diagram_name')  String diagramName, @JsonKey(name: 'id')  int id, @JsonKey(name: 'question_id')  int questionId)?  $default,) {final _that = this;
switch (_that) {
case _Option() when $default != null:
return $default(_that.label,_that.text,_that.hasDiagram,_that.diagramDescription,_that.diagramName,_that.id,_that.questionId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Option implements Option {
  const _Option({@JsonKey(name: 'label') required this.label, @JsonKey(name: 'text') this.text = 'none', @JsonKey(name: 'option_has_diagram') this.hasDiagram = false, @JsonKey(name: 'option_diagram_description') this.diagramDescription = 'none', @JsonKey(name: 'option_diagram_name') this.diagramName = 'none', @JsonKey(name: 'id') required this.id, @JsonKey(name: 'question_id') required this.questionId});
  factory _Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

@override@JsonKey(name: 'label') final  String label;
@override@JsonKey(name: 'text') final  String text;
@override@JsonKey(name: 'option_has_diagram') final  bool hasDiagram;
@override@JsonKey(name: 'option_diagram_description') final  String diagramDescription;
@override@JsonKey(name: 'option_diagram_name') final  String diagramName;
@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'question_id') final  int questionId;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OptionCopyWith<_Option> get copyWith => __$OptionCopyWithImpl<_Option>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Option&&(identical(other.label, label) || other.label == label)&&(identical(other.text, text) || other.text == text)&&(identical(other.hasDiagram, hasDiagram) || other.hasDiagram == hasDiagram)&&(identical(other.diagramDescription, diagramDescription) || other.diagramDescription == diagramDescription)&&(identical(other.diagramName, diagramName) || other.diagramName == diagramName)&&(identical(other.id, id) || other.id == id)&&(identical(other.questionId, questionId) || other.questionId == questionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,text,hasDiagram,diagramDescription,diagramName,id,questionId);

@override
String toString() {
  return 'Option(label: $label, text: $text, hasDiagram: $hasDiagram, diagramDescription: $diagramDescription, diagramName: $diagramName, id: $id, questionId: $questionId)';
}


}

/// @nodoc
abstract mixin class _$OptionCopyWith<$Res> implements $OptionCopyWith<$Res> {
  factory _$OptionCopyWith(_Option value, $Res Function(_Option) _then) = __$OptionCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'label') String label,@JsonKey(name: 'text') String text,@JsonKey(name: 'option_has_diagram') bool hasDiagram,@JsonKey(name: 'option_diagram_description') String diagramDescription,@JsonKey(name: 'option_diagram_name') String diagramName,@JsonKey(name: 'id') int id,@JsonKey(name: 'question_id') int questionId
});




}
/// @nodoc
class __$OptionCopyWithImpl<$Res>
    implements _$OptionCopyWith<$Res> {
  __$OptionCopyWithImpl(this._self, this._then);

  final _Option _self;
  final $Res Function(_Option) _then;

/// Create a copy of Option
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? text = null,Object? hasDiagram = null,Object? diagramDescription = null,Object? diagramName = null,Object? id = null,Object? questionId = null,}) {
  return _then(_Option(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,hasDiagram: null == hasDiagram ? _self.hasDiagram : hasDiagram // ignore: cast_nullable_to_non_nullable
as bool,diagramDescription: null == diagramDescription ? _self.diagramDescription : diagramDescription // ignore: cast_nullable_to_non_nullable
as String,diagramName: null == diagramName ? _self.diagramName : diagramName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,questionId: null == questionId ? _self.questionId : questionId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
