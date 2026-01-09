import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

part 'route_state.freezed.dart';

@Freezed()
abstract class RouteState with _$RouteState {
  const factory RouteState({
    @Default(false) bool isLoading,
    String? error,
    SubjectsResponse? selectedSubject,
    Map<String, dynamic>? selectedChapter,
  }) = _RouteState;
}
