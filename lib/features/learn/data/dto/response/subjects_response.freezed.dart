// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubjectsResponse {

@JsonKey(name: 'class_name') String get className;@JsonKey(name: 'subject_name') String get subjectName; int get id;@JsonKey(name: 'created_at') DateTime get createdAt;@JsonKey(name: 'updated_at') DateTime get updatedAt; List<Chapter> get chapters;
/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubjectsResponseCopyWith<SubjectsResponse> get copyWith => _$SubjectsResponseCopyWithImpl<SubjectsResponse>(this as SubjectsResponse, _$identity);

  /// Serializes this SubjectsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubjectsResponse&&(identical(other.className, className) || other.className == className)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.chapters, chapters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,className,subjectName,id,createdAt,updatedAt,const DeepCollectionEquality().hash(chapters));

@override
String toString() {
  return 'SubjectsResponse(className: $className, subjectName: $subjectName, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, chapters: $chapters)';
}


}

/// @nodoc
abstract mixin class $SubjectsResponseCopyWith<$Res>  {
  factory $SubjectsResponseCopyWith(SubjectsResponse value, $Res Function(SubjectsResponse) _then) = _$SubjectsResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'class_name') String className,@JsonKey(name: 'subject_name') String subjectName, int id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, List<Chapter> chapters
});




}
/// @nodoc
class _$SubjectsResponseCopyWithImpl<$Res>
    implements $SubjectsResponseCopyWith<$Res> {
  _$SubjectsResponseCopyWithImpl(this._self, this._then);

  final SubjectsResponse _self;
  final $Res Function(SubjectsResponse) _then;

/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? className = null,Object? subjectName = null,Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? chapters = null,}) {
  return _then(_self.copyWith(
className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,chapters: null == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,
  ));
}

}


/// Adds pattern-matching-related methods to [SubjectsResponse].
extension SubjectsResponsePatterns on SubjectsResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubjectsResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubjectsResponse value)  $default,){
final _that = this;
switch (_that) {
case _SubjectsResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubjectsResponse value)?  $default,){
final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_name')  String className, @JsonKey(name: 'subject_name')  String subjectName,  int id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  List<Chapter> chapters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
return $default(_that.className,_that.subjectName,_that.id,_that.createdAt,_that.updatedAt,_that.chapters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'class_name')  String className, @JsonKey(name: 'subject_name')  String subjectName,  int id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  List<Chapter> chapters)  $default,) {final _that = this;
switch (_that) {
case _SubjectsResponse():
return $default(_that.className,_that.subjectName,_that.id,_that.createdAt,_that.updatedAt,_that.chapters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'class_name')  String className, @JsonKey(name: 'subject_name')  String subjectName,  int id, @JsonKey(name: 'created_at')  DateTime createdAt, @JsonKey(name: 'updated_at')  DateTime updatedAt,  List<Chapter> chapters)?  $default,) {final _that = this;
switch (_that) {
case _SubjectsResponse() when $default != null:
return $default(_that.className,_that.subjectName,_that.id,_that.createdAt,_that.updatedAt,_that.chapters);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubjectsResponse implements SubjectsResponse {
  const _SubjectsResponse({@JsonKey(name: 'class_name') required this.className, @JsonKey(name: 'subject_name') required this.subjectName, required this.id, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt, required final  List<Chapter> chapters}): _chapters = chapters;
  factory _SubjectsResponse.fromJson(Map<String, dynamic> json) => _$SubjectsResponseFromJson(json);

@override@JsonKey(name: 'class_name') final  String className;
@override@JsonKey(name: 'subject_name') final  String subjectName;
@override final  int id;
@override@JsonKey(name: 'created_at') final  DateTime createdAt;
@override@JsonKey(name: 'updated_at') final  DateTime updatedAt;
 final  List<Chapter> _chapters;
@override List<Chapter> get chapters {
  if (_chapters is EqualUnmodifiableListView) return _chapters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_chapters);
}


/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubjectsResponseCopyWith<_SubjectsResponse> get copyWith => __$SubjectsResponseCopyWithImpl<_SubjectsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubjectsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubjectsResponse&&(identical(other.className, className) || other.className == className)&&(identical(other.subjectName, subjectName) || other.subjectName == subjectName)&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._chapters, _chapters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,className,subjectName,id,createdAt,updatedAt,const DeepCollectionEquality().hash(_chapters));

@override
String toString() {
  return 'SubjectsResponse(className: $className, subjectName: $subjectName, id: $id, createdAt: $createdAt, updatedAt: $updatedAt, chapters: $chapters)';
}


}

/// @nodoc
abstract mixin class _$SubjectsResponseCopyWith<$Res> implements $SubjectsResponseCopyWith<$Res> {
  factory _$SubjectsResponseCopyWith(_SubjectsResponse value, $Res Function(_SubjectsResponse) _then) = __$SubjectsResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'class_name') String className,@JsonKey(name: 'subject_name') String subjectName, int id,@JsonKey(name: 'created_at') DateTime createdAt,@JsonKey(name: 'updated_at') DateTime updatedAt, List<Chapter> chapters
});




}
/// @nodoc
class __$SubjectsResponseCopyWithImpl<$Res>
    implements _$SubjectsResponseCopyWith<$Res> {
  __$SubjectsResponseCopyWithImpl(this._self, this._then);

  final _SubjectsResponse _self;
  final $Res Function(_SubjectsResponse) _then;

/// Create a copy of SubjectsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? className = null,Object? subjectName = null,Object? id = null,Object? createdAt = null,Object? updatedAt = null,Object? chapters = null,}) {
  return _then(_SubjectsResponse(
className: null == className ? _self.className : className // ignore: cast_nullable_to_non_nullable
as String,subjectName: null == subjectName ? _self.subjectName : subjectName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime,chapters: null == chapters ? _self._chapters : chapters // ignore: cast_nullable_to_non_nullable
as List<Chapter>,
  ));
}


}


/// @nodoc
mixin _$Chapter {

 String get no; String get name;@JsonKey(name: 'formatted_name') String get formattedName; int get id;@JsonKey(name: 'subject_id') int get subjectId; List<Topic> get topics;
/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChapterCopyWith<Chapter> get copyWith => _$ChapterCopyWithImpl<Chapter>(this as Chapter, _$identity);

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chapter&&(identical(other.no, no) || other.no == no)&&(identical(other.name, name) || other.name == name)&&(identical(other.formattedName, formattedName) || other.formattedName == formattedName)&&(identical(other.id, id) || other.id == id)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&const DeepCollectionEquality().equals(other.topics, topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,no,name,formattedName,id,subjectId,const DeepCollectionEquality().hash(topics));

@override
String toString() {
  return 'Chapter(no: $no, name: $name, formattedName: $formattedName, id: $id, subjectId: $subjectId, topics: $topics)';
}


}

/// @nodoc
abstract mixin class $ChapterCopyWith<$Res>  {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) _then) = _$ChapterCopyWithImpl;
@useResult
$Res call({
 String no, String name,@JsonKey(name: 'formatted_name') String formattedName, int id,@JsonKey(name: 'subject_id') int subjectId, List<Topic> topics
});




}
/// @nodoc
class _$ChapterCopyWithImpl<$Res>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._self, this._then);

  final Chapter _self;
  final $Res Function(Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? no = null,Object? name = null,Object? formattedName = null,Object? id = null,Object? subjectId = null,Object? topics = null,}) {
  return _then(_self.copyWith(
no: null == no ? _self.no : no // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formattedName: null == formattedName ? _self.formattedName : formattedName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self.topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}

}


/// Adds pattern-matching-related methods to [Chapter].
extension ChapterPatterns on Chapter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chapter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chapter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chapter value)  $default,){
final _that = this;
switch (_that) {
case _Chapter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chapter value)?  $default,){
final _that = this;
switch (_that) {
case _Chapter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'subject_id')  int subjectId,  List<Topic> topics)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.subjectId,_that.topics);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'subject_id')  int subjectId,  List<Topic> topics)  $default,) {final _that = this;
switch (_that) {
case _Chapter():
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.subjectId,_that.topics);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'subject_id')  int subjectId,  List<Topic> topics)?  $default,) {final _that = this;
switch (_that) {
case _Chapter() when $default != null:
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.subjectId,_that.topics);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Chapter implements Chapter {
  const _Chapter({required this.no, required this.name, @JsonKey(name: 'formatted_name') required this.formattedName, required this.id, @JsonKey(name: 'subject_id') required this.subjectId, required final  List<Topic> topics}): _topics = topics;
  factory _Chapter.fromJson(Map<String, dynamic> json) => _$ChapterFromJson(json);

@override final  String no;
@override final  String name;
@override@JsonKey(name: 'formatted_name') final  String formattedName;
@override final  int id;
@override@JsonKey(name: 'subject_id') final  int subjectId;
 final  List<Topic> _topics;
@override List<Topic> get topics {
  if (_topics is EqualUnmodifiableListView) return _topics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topics);
}


/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChapterCopyWith<_Chapter> get copyWith => __$ChapterCopyWithImpl<_Chapter>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChapterToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chapter&&(identical(other.no, no) || other.no == no)&&(identical(other.name, name) || other.name == name)&&(identical(other.formattedName, formattedName) || other.formattedName == formattedName)&&(identical(other.id, id) || other.id == id)&&(identical(other.subjectId, subjectId) || other.subjectId == subjectId)&&const DeepCollectionEquality().equals(other._topics, _topics));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,no,name,formattedName,id,subjectId,const DeepCollectionEquality().hash(_topics));

@override
String toString() {
  return 'Chapter(no: $no, name: $name, formattedName: $formattedName, id: $id, subjectId: $subjectId, topics: $topics)';
}


}

/// @nodoc
abstract mixin class _$ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$ChapterCopyWith(_Chapter value, $Res Function(_Chapter) _then) = __$ChapterCopyWithImpl;
@override @useResult
$Res call({
 String no, String name,@JsonKey(name: 'formatted_name') String formattedName, int id,@JsonKey(name: 'subject_id') int subjectId, List<Topic> topics
});




}
/// @nodoc
class __$ChapterCopyWithImpl<$Res>
    implements _$ChapterCopyWith<$Res> {
  __$ChapterCopyWithImpl(this._self, this._then);

  final _Chapter _self;
  final $Res Function(_Chapter) _then;

/// Create a copy of Chapter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? no = null,Object? name = null,Object? formattedName = null,Object? id = null,Object? subjectId = null,Object? topics = null,}) {
  return _then(_Chapter(
no: null == no ? _self.no : no // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formattedName: null == formattedName ? _self.formattedName : formattedName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,subjectId: null == subjectId ? _self.subjectId : subjectId // ignore: cast_nullable_to_non_nullable
as int,topics: null == topics ? _self._topics : topics // ignore: cast_nullable_to_non_nullable
as List<Topic>,
  ));
}


}


/// @nodoc
mixin _$Topic {

 String get no; String get name;@JsonKey(name: 'formatted_name') String get formattedName; int get id;@JsonKey(name: 'chapter_id') int get chapterId;
/// Create a copy of Topic
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopicCopyWith<Topic> get copyWith => _$TopicCopyWithImpl<Topic>(this as Topic, _$identity);

  /// Serializes this Topic to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Topic&&(identical(other.no, no) || other.no == no)&&(identical(other.name, name) || other.name == name)&&(identical(other.formattedName, formattedName) || other.formattedName == formattedName)&&(identical(other.id, id) || other.id == id)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,no,name,formattedName,id,chapterId);

@override
String toString() {
  return 'Topic(no: $no, name: $name, formattedName: $formattedName, id: $id, chapterId: $chapterId)';
}


}

/// @nodoc
abstract mixin class $TopicCopyWith<$Res>  {
  factory $TopicCopyWith(Topic value, $Res Function(Topic) _then) = _$TopicCopyWithImpl;
@useResult
$Res call({
 String no, String name,@JsonKey(name: 'formatted_name') String formattedName, int id,@JsonKey(name: 'chapter_id') int chapterId
});




}
/// @nodoc
class _$TopicCopyWithImpl<$Res>
    implements $TopicCopyWith<$Res> {
  _$TopicCopyWithImpl(this._self, this._then);

  final Topic _self;
  final $Res Function(Topic) _then;

/// Create a copy of Topic
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? no = null,Object? name = null,Object? formattedName = null,Object? id = null,Object? chapterId = null,}) {
  return _then(_self.copyWith(
no: null == no ? _self.no : no // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formattedName: null == formattedName ? _self.formattedName : formattedName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chapterId: null == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [Topic].
extension TopicPatterns on Topic {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Topic value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Topic() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Topic value)  $default,){
final _that = this;
switch (_that) {
case _Topic():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Topic value)?  $default,){
final _that = this;
switch (_that) {
case _Topic() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'chapter_id')  int chapterId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Topic() when $default != null:
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.chapterId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'chapter_id')  int chapterId)  $default,) {final _that = this;
switch (_that) {
case _Topic():
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.chapterId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String no,  String name, @JsonKey(name: 'formatted_name')  String formattedName,  int id, @JsonKey(name: 'chapter_id')  int chapterId)?  $default,) {final _that = this;
switch (_that) {
case _Topic() when $default != null:
return $default(_that.no,_that.name,_that.formattedName,_that.id,_that.chapterId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Topic implements Topic {
  const _Topic({required this.no, required this.name, @JsonKey(name: 'formatted_name') required this.formattedName, required this.id, @JsonKey(name: 'chapter_id') required this.chapterId});
  factory _Topic.fromJson(Map<String, dynamic> json) => _$TopicFromJson(json);

@override final  String no;
@override final  String name;
@override@JsonKey(name: 'formatted_name') final  String formattedName;
@override final  int id;
@override@JsonKey(name: 'chapter_id') final  int chapterId;

/// Create a copy of Topic
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopicCopyWith<_Topic> get copyWith => __$TopicCopyWithImpl<_Topic>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopicToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Topic&&(identical(other.no, no) || other.no == no)&&(identical(other.name, name) || other.name == name)&&(identical(other.formattedName, formattedName) || other.formattedName == formattedName)&&(identical(other.id, id) || other.id == id)&&(identical(other.chapterId, chapterId) || other.chapterId == chapterId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,no,name,formattedName,id,chapterId);

@override
String toString() {
  return 'Topic(no: $no, name: $name, formattedName: $formattedName, id: $id, chapterId: $chapterId)';
}


}

/// @nodoc
abstract mixin class _$TopicCopyWith<$Res> implements $TopicCopyWith<$Res> {
  factory _$TopicCopyWith(_Topic value, $Res Function(_Topic) _then) = __$TopicCopyWithImpl;
@override @useResult
$Res call({
 String no, String name,@JsonKey(name: 'formatted_name') String formattedName, int id,@JsonKey(name: 'chapter_id') int chapterId
});




}
/// @nodoc
class __$TopicCopyWithImpl<$Res>
    implements _$TopicCopyWith<$Res> {
  __$TopicCopyWithImpl(this._self, this._then);

  final _Topic _self;
  final $Res Function(_Topic) _then;

/// Create a copy of Topic
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? no = null,Object? name = null,Object? formattedName = null,Object? id = null,Object? chapterId = null,}) {
  return _then(_Topic(
no: null == no ? _self.no : no // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,formattedName: null == formattedName ? _self.formattedName : formattedName // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chapterId: null == chapterId ? _self.chapterId : chapterId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
