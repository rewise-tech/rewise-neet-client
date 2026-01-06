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
}
