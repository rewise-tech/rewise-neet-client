import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/app/routes/route_name.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/presentation/controller/learn_controller.dart';
import 'package:rewise_neet/features/learn/presentation/widgets/question_tile.dart';

class QuestionsPage extends ConsumerStatefulWidget {
  final Chapter chapter;
  final String className;
  final String subjectName;

  const QuestionsPage({
    super.key,
    required this.chapter,
    required this.className,
    required this.subjectName,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends ConsumerState<QuestionsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref
          .read(learnControllerProvider.notifier)
          .searchQuestions(
            subject: widget.subjectName,
            chapter: widget.chapter.formattedName,
          );
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(learnControllerProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Questions'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/$chaptersRoute'),
        ),
      ),
      body: _buildBody(state, colorScheme, context),
    );
  }

  Widget _buildBody(
    dynamic state,
    ColorScheme colorScheme,
    BuildContext context,
  ) {
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
              Icons.quiz_outlined,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            const Text(
              'No Questions Available',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'No questions found for this chapter',
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            const SizedBox(height: 24),
          ],
        ),
      );
    }

    final currentQuestion = state.questions[state.currentQuestionIndex];
    final theme = Theme.of(context);

    return Column(
      children: [
        // Progress indicator
        Container(
          padding: const EdgeInsets.all(16),
          color: colorScheme.surfaceContainerLowest,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question ${state.currentQuestionIndex + 1} of ${state.questions.length}',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  Text(
                    '${(((state.currentQuestionIndex + 1) / state.questions.length) * 100).toStringAsFixed(0)}%',
                    style: theme.textTheme.labelMedium?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value:
                      (state.currentQuestionIndex + 1) / state.questions.length,
                  minHeight: 4,
                  backgroundColor: colorScheme.outlineVariant,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
        // Question content
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: QuestionTile(
              question: currentQuestion,
              className: widget.className,
              subjectName: widget.subjectName,
            ),
          ),
        ),
        // Navigation buttons
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: colorScheme.outlineVariant)),
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: state.currentQuestionIndex > 0
                      ? () => ref
                            .read(learnControllerProvider.notifier)
                            .previousQuestion()
                      : null,
                  icon: const Icon(Icons.arrow_back),
                  label: const Text('Previous'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed:
                      state.currentQuestionIndex < state.questions.length - 1
                      ? () => ref
                            .read(learnControllerProvider.notifier)
                            .nextQuestion()
                      : null,
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
