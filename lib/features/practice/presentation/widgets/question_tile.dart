import 'package:flutter/material.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';

class QuestionTile extends StatelessWidget {
  //
  final QuestionResponse question;

  const QuestionTile({super.key, required this.question});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Question container
          Container(
            decoration: BoxDecoration(
              color: colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colorScheme.outlineVariant),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Text(
              question.questionText,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Option 1
          _buildOption(context, question.options[0].text),
          const SizedBox(height: 8),
          // Option 2
          _buildOption(context, question.options[1].text),
          const SizedBox(height: 8),
          // Option 3
          _buildOption(context, question.options[2].text),
          const SizedBox(height: 8),
          // Option 4
          _buildOption(context, question.options[3].text),
        ],
      ),
    );
  }

  Widget _buildOption(BuildContext context, String text) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outlineVariant),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: colorScheme.primary, width: 2),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
