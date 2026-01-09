import 'package:flutter/material.dart';
import 'package:latext/latext.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/app/routes/route_name.dart';
import 'package:rewise_neet/app/routes/route_state_provider.dart';
import 'package:rewise_neet/common/utils/strings_utils.dart';
import 'package:rewise_neet/features/learn/presentation/controller/learn_controller.dart';
import 'package:rewise_neet/features/learn/presentation/widgets/question_tile.dart';

class QuestionsPage extends ConsumerStatefulWidget {
  const QuestionsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QuestionsPageState();
}

class _QuestionsPageState extends ConsumerState<QuestionsPage> {
  // Show Bottom Drawer for Solution
  void _showBottomDrawer(BuildContext context, dynamic question) {
    final state = ref.watch(learnControllerProvider);

    // Check if user has selected an option
    if (state.selectedOptionIndex == -1) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Please select an answer'),
          backgroundColor: Theme.of(context).colorScheme.error,
          duration: const Duration(seconds: 2),
        ),
      );
      return;
    }

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Close button
              Align(
                alignment: Alignment.topRight,
                child: IconButton.filledTonal(
                  iconSize: 20,
                  icon: Icon(Icons.close, color: Colors.red),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              //Answer
              Text(
                "Answer: ${question.answer ?? 'N/A'}",
                textAlign: TextAlign.start,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),

              const SizedBox(height: 8),
              // Solution
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: colorScheme.outlineVariant,
                    width: 1,
                  ),
                  color: colorScheme.surface,
                ),
                padding: const EdgeInsets.all(10),
                child: LaTexT(
                  laTeXCode: Text(
                    convertToInlineMath(question.solution),
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        );
      },
    );
  }

  void _previousQuestion() {
    ref.read(learnControllerProvider.notifier).previousQuestion();
  }

  void _nextQuestion() {
    ref.read(learnControllerProvider.notifier).nextQuestion();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      final routeState = ref.read(routeStateProvider);
      final chapter = routeState.selectedChapter?['chapter'];
      final subjectName = routeState.selectedChapter?['subjectName'];

      final provider = ref.read(learnControllerProvider.notifier);
      if (chapter != null && subjectName != null) {
        provider.searchQuestions(
          subject: subjectName,
          chapter: chapter.formattedName,
        );
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(learnControllerProvider);
    final routeState = ref.watch(routeStateProvider);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Get data from parameter or provider
    final chapter = routeState.selectedChapter?['chapter'];
    final className = routeState.selectedChapter?['className'];
    final subjectName = routeState.selectedChapter?['subjectName'];

    // final title = '$className - $subjectName';

    // If still no data, show error
    if (chapter == null || className == null || subjectName == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Questions"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/$chaptersRoute'),
          ),
        ),
        body: const Center(
          child: Text('Question data not available. Please try again.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/$chaptersRoute'),
        ),
      ),
      body: _buildBody(state, routeState, colorScheme, context),
    );
  }

  Widget _buildBody(
    dynamic state,
    dynamic routeState,
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

    final className = routeState.selectedChapter?['className'];
    final subjectName = routeState.selectedChapter?['subjectName'];

    final currentQuestion = state.questions[state.currentQuestionIndex];
    final theme = Theme.of(context);

    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        if (details.primaryVelocity! > 0) {
          // Swiped right
          _previousQuestion();
        } else if (details.primaryVelocity! < 0) {
          // Swiped left
          _nextQuestion();
        }
      },
      child: Column(
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
                        (state.currentQuestionIndex + 1) /
                        state.questions.length,
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
                className: className,
                subjectName: subjectName,
              ),
            ),
          ),
          // Navigation buttons
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: colorScheme.outlineVariant),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                //Previous Button
                IconButton.filled(
                  iconSize: 25,
                  disabledColor: colorScheme.primary.withValues(alpha: 0.5),
                  color: colorScheme.primary,
                  onPressed: state.currentQuestionIndex > 0
                      ? _previousQuestion
                      : null,
                  icon: Icon(
                    Icons.navigate_before,
                    color: colorScheme.onPrimary,
                  ),
                ),
                const SizedBox(width: 16),
                //Solution Button
                OutlinedButton.icon(
                  onPressed: () => _showBottomDrawer(context, currentQuestion),
                  label: const Text('Solution'),
                  icon: const Icon(Icons.lightbulb_outline),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: colorScheme.primary,
                    side: BorderSide(color: colorScheme.primary, width: 1.5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    textStyle: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
                const SizedBox(width: 16),
                //Next Button
                IconButton.filled(
                  iconSize: 25,
                  disabledColor: colorScheme.primary.withValues(alpha: 0.5),
                  color: colorScheme.primary,
                  onPressed:
                      state.currentQuestionIndex < state.questions.length - 1
                      ? _nextQuestion
                      : null,
                  icon: Icon(Icons.navigate_next, color: colorScheme.onPrimary),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
