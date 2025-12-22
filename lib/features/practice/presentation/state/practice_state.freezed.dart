// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'practice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PracticeState {

 bool get isLoading; String? get error; List<QuestionResponse> get questions;
/// Create a copy of PracticeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PracticeStateCopyWith<PracticeState> get copyWith => _$PracticeStateCopyWithImpl<PracticeState>(this as PracticeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PracticeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.questions, questions));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,const DeepCollectionEquality().hash(questions));

@override
String toString() {
  return 'PracticeState(isLoading: $isLoading, error: $error, questions: $questions)';
}


}

/// @nodoc
abstract mixin class $PracticeStateCopyWith<$Res>  {
  factory $PracticeStateCopyWith(PracticeState value, $Res Function(PracticeState) _then) = _$PracticeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? error, List<QuestionResponse> questions
});




}
/// @nodoc
class _$PracticeStateCopyWithImpl<$Res>
    implements $PracticeStateCopyWith<$Res> {
  _$PracticeStateCopyWithImpl(this._self, this._then);

  final PracticeState _self;
  final $Res Function(PracticeState) _then;

/// Create a copy of PracticeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = freezed,Object? questions = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,questions: null == questions ? _self.questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionResponse>,
  ));
}

}


/// Adds pattern-matching-related methods to [PracticeState].
extension PracticeStatePatterns on PracticeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PracticeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PracticeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PracticeState value)  $default,){
final _that = this;
switch (_that) {
case _PracticeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PracticeState value)?  $default,){
final _that = this;
switch (_that) {
case _PracticeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  List<QuestionResponse> questions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PracticeState() when $default != null:
return $default(_that.isLoading,_that.error,_that.questions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  List<QuestionResponse> questions)  $default,) {final _that = this;
switch (_that) {
case _PracticeState():
return $default(_that.isLoading,_that.error,_that.questions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? error,  List<QuestionResponse> questions)?  $default,) {final _that = this;
switch (_that) {
case _PracticeState() when $default != null:
return $default(_that.isLoading,_that.error,_that.questions);case _:
  return null;

}
}

}

/// @nodoc


class _PracticeState implements PracticeState {
  const _PracticeState({this.isLoading = false, this.error, final  List<QuestionResponse> questions = const []}): _questions = questions;
  

@override@JsonKey() final  bool isLoading;
@override final  String? error;
 final  List<QuestionResponse> _questions;
@override@JsonKey() List<QuestionResponse> get questions {
  if (_questions is EqualUnmodifiableListView) return _questions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_questions);
}


/// Create a copy of PracticeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PracticeStateCopyWith<_PracticeState> get copyWith => __$PracticeStateCopyWithImpl<_PracticeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PracticeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other._questions, _questions));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,const DeepCollectionEquality().hash(_questions));

@override
String toString() {
  return 'PracticeState(isLoading: $isLoading, error: $error, questions: $questions)';
}


}

/// @nodoc
abstract mixin class _$PracticeStateCopyWith<$Res> implements $PracticeStateCopyWith<$Res> {
  factory _$PracticeStateCopyWith(_PracticeState value, $Res Function(_PracticeState) _then) = __$PracticeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? error, List<QuestionResponse> questions
});




}
/// @nodoc
class __$PracticeStateCopyWithImpl<$Res>
    implements _$PracticeStateCopyWith<$Res> {
  __$PracticeStateCopyWithImpl(this._self, this._then);

  final _PracticeState _self;
  final $Res Function(_PracticeState) _then;

/// Create a copy of PracticeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = freezed,Object? questions = null,}) {
  return _then(_PracticeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,questions: null == questions ? _self._questions : questions // ignore: cast_nullable_to_non_nullable
as List<QuestionResponse>,
  ));
}


}

// dart format on
