// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RouteState {

 bool get isLoading; String? get error; SubjectsResponse? get selectedSubject; Map<String, dynamic>? get selectedChapter;
/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RouteStateCopyWith<RouteState> get copyWith => _$RouteStateCopyWithImpl<RouteState>(this as RouteState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RouteState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedSubject, selectedSubject) || other.selectedSubject == selectedSubject)&&const DeepCollectionEquality().equals(other.selectedChapter, selectedChapter));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,selectedSubject,const DeepCollectionEquality().hash(selectedChapter));

@override
String toString() {
  return 'RouteState(isLoading: $isLoading, error: $error, selectedSubject: $selectedSubject, selectedChapter: $selectedChapter)';
}


}

/// @nodoc
abstract mixin class $RouteStateCopyWith<$Res>  {
  factory $RouteStateCopyWith(RouteState value, $Res Function(RouteState) _then) = _$RouteStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, String? error, SubjectsResponse? selectedSubject, Map<String, dynamic>? selectedChapter
});


$SubjectsResponseCopyWith<$Res>? get selectedSubject;

}
/// @nodoc
class _$RouteStateCopyWithImpl<$Res>
    implements $RouteStateCopyWith<$Res> {
  _$RouteStateCopyWithImpl(this._self, this._then);

  final RouteState _self;
  final $Res Function(RouteState) _then;

/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? error = freezed,Object? selectedSubject = freezed,Object? selectedChapter = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedSubject: freezed == selectedSubject ? _self.selectedSubject : selectedSubject // ignore: cast_nullable_to_non_nullable
as SubjectsResponse?,selectedChapter: freezed == selectedChapter ? _self.selectedChapter : selectedChapter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectsResponseCopyWith<$Res>? get selectedSubject {
    if (_self.selectedSubject == null) {
    return null;
  }

  return $SubjectsResponseCopyWith<$Res>(_self.selectedSubject!, (value) {
    return _then(_self.copyWith(selectedSubject: value));
  });
}
}


/// Adds pattern-matching-related methods to [RouteState].
extension RouteStatePatterns on RouteState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RouteState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RouteState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RouteState value)  $default,){
final _that = this;
switch (_that) {
case _RouteState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RouteState value)?  $default,){
final _that = this;
switch (_that) {
case _RouteState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  SubjectsResponse? selectedSubject,  Map<String, dynamic>? selectedChapter)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RouteState() when $default != null:
return $default(_that.isLoading,_that.error,_that.selectedSubject,_that.selectedChapter);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  String? error,  SubjectsResponse? selectedSubject,  Map<String, dynamic>? selectedChapter)  $default,) {final _that = this;
switch (_that) {
case _RouteState():
return $default(_that.isLoading,_that.error,_that.selectedSubject,_that.selectedChapter);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  String? error,  SubjectsResponse? selectedSubject,  Map<String, dynamic>? selectedChapter)?  $default,) {final _that = this;
switch (_that) {
case _RouteState() when $default != null:
return $default(_that.isLoading,_that.error,_that.selectedSubject,_that.selectedChapter);case _:
  return null;

}
}

}

/// @nodoc


class _RouteState implements RouteState {
  const _RouteState({this.isLoading = false, this.error, this.selectedSubject, final  Map<String, dynamic>? selectedChapter}): _selectedChapter = selectedChapter;
  

@override@JsonKey() final  bool isLoading;
@override final  String? error;
@override final  SubjectsResponse? selectedSubject;
 final  Map<String, dynamic>? _selectedChapter;
@override Map<String, dynamic>? get selectedChapter {
  final value = _selectedChapter;
  if (value == null) return null;
  if (_selectedChapter is EqualUnmodifiableMapView) return _selectedChapter;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RouteStateCopyWith<_RouteState> get copyWith => __$RouteStateCopyWithImpl<_RouteState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RouteState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.error, error) || other.error == error)&&(identical(other.selectedSubject, selectedSubject) || other.selectedSubject == selectedSubject)&&const DeepCollectionEquality().equals(other._selectedChapter, _selectedChapter));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,error,selectedSubject,const DeepCollectionEquality().hash(_selectedChapter));

@override
String toString() {
  return 'RouteState(isLoading: $isLoading, error: $error, selectedSubject: $selectedSubject, selectedChapter: $selectedChapter)';
}


}

/// @nodoc
abstract mixin class _$RouteStateCopyWith<$Res> implements $RouteStateCopyWith<$Res> {
  factory _$RouteStateCopyWith(_RouteState value, $Res Function(_RouteState) _then) = __$RouteStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, String? error, SubjectsResponse? selectedSubject, Map<String, dynamic>? selectedChapter
});


@override $SubjectsResponseCopyWith<$Res>? get selectedSubject;

}
/// @nodoc
class __$RouteStateCopyWithImpl<$Res>
    implements _$RouteStateCopyWith<$Res> {
  __$RouteStateCopyWithImpl(this._self, this._then);

  final _RouteState _self;
  final $Res Function(_RouteState) _then;

/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? error = freezed,Object? selectedSubject = freezed,Object? selectedChapter = freezed,}) {
  return _then(_RouteState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,selectedSubject: freezed == selectedSubject ? _self.selectedSubject : selectedSubject // ignore: cast_nullable_to_non_nullable
as SubjectsResponse?,selectedChapter: freezed == selectedChapter ? _self._selectedChapter : selectedChapter // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of RouteState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubjectsResponseCopyWith<$Res>? get selectedSubject {
    if (_self.selectedSubject == null) {
    return null;
  }

  return $SubjectsResponseCopyWith<$Res>(_self.selectedSubject!, (value) {
    return _then(_self.copyWith(selectedSubject: value));
  });
}
}

// dart format on
