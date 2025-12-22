import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/features/practice/application/practice_service_impl.dart';
import 'package:rewise_neet/features/practice/presentation/state/practice_state.dart';

final practiceControllerProvider =
    NotifierProvider<PracticeController, PracticeState>(PracticeController.new);

class PracticeController extends Notifier<PracticeState> {
  @override
  PracticeState build() {
    return const PracticeState();
  }

  Future<void> getQuestions() async {
    try {
      final result = await ref.read(practiceServiceProvider).getQuestions();
      result.when(
        (success) {
          state = state.copyWith(isLoading: false, questions: success);
        },
        (error) {
          state = state.copyWith(isLoading: false, error: error.message);
        },
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: e.toString());
    }
  }
}
