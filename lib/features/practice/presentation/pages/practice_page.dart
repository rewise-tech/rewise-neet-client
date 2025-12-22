import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/features/practice/presentation/controller/practice_controller.dart';
import 'package:rewise_neet/features/practice/presentation/widgets/question_tile.dart';

class PracticePage extends ConsumerStatefulWidget {
  const PracticePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PracticePageState();
}

class _PracticePageState extends ConsumerState<PracticePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(practiceControllerProvider.notifier).getQuestions();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(practiceControllerProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (state.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (state.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Error: ${state.error}',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    if (state.questions.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit_note,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            const Text(
              'Practice',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Solve practice questions and tests',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
          ],
        ),
      );
    }

    return Container(
      color: colorScheme.surfaceContainerLowest,
      child: ListView.builder(
        itemCount: state.questions.length,
        itemBuilder: (context, index) {
          final question = state.questions[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: QuestionTile(question: question),
          );
        },
      ),
    );
  }
}
