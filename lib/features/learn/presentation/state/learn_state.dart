import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewise_neet/features/learn/data/dto/response/questions_response.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

part 'learn_state.freezed.dart';

@Freezed()
abstract class LearnState with _$LearnState {
  const factory LearnState({
    @Default(false) bool isLoading,
    String? error,
    @Default([]) List<SubjectsResponse> subjects,
    @Default([]) List<QuestionsResponse> questions,
    @Default(0) int currentQuestionIndex,
  }) = _LearnState;
}
