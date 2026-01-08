import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/features/learn/application/learn_service_impl.dart';
import 'package:rewise_neet/features/learn/presentation/state/learn_state.dart';

final learnControllerProvider = NotifierProvider<LearnController, LearnState>(
  LearnController.new,
);

class LearnController extends Notifier<LearnState> {
  @override
  LearnState build() {
    return const LearnState();
  }

  Future<void> getSubjects() async {
    try {
      final result = await ref.read(learnServiceProvider).getSubjects();
      result.when(
        (success) {
          state = state.copyWith(isLoading: false, subjects: success);
        },
        (error) {
          state = state.copyWith(isLoading: false, error: error.message);
        },
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  Future<void> searchQuestions({
    String? year,
    String? source,
    String? subject,
    String? chapter,
  }) async {
    try {
      state = state.copyWith(isLoading: true, currentQuestionIndex: 0);
      final result = await ref
          .read(learnServiceProvider)
          .searchQuestions(
            year: year,
            source: source,
            subject: subject,
            chapter: chapter,
          );
      result.when(
        (success) {
          print(success);
          state = state.copyWith(
            isLoading: false,
            questions: success,
            currentQuestionIndex: 0,
          );
        },
        (error) {
          state = state.copyWith(isLoading: false, error: error.message);
        },
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }

  void nextQuestion() {
    if (state.currentQuestionIndex < state.questions.length - 1) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex + 1,
      );
    }
  }

  void previousQuestion() {
    if (state.currentQuestionIndex > 0) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex - 1,
      );
    }
  }
}
