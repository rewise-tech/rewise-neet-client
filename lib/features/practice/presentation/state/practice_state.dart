import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';

part 'practice_state.freezed.dart';

@Freezed()
abstract class PracticeState with _$PracticeState {
  const factory PracticeState({
    @Default(false) bool isLoading,
    String? error,
    @Default([]) List<QuestionResponse> questions,
  }) = _PracticeState;
}
