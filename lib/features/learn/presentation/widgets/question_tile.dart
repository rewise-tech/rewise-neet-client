import 'package:flutter/material.dart';
import 'package:rewise_neet/common/utils/strings_utils.dart';
import 'package:rewise_neet/features/learn/data/dto/response/questions_response.dart';

class QuestionTile extends StatefulWidget {
  final QuestionsResponse question;
  final String className;
  final String subjectName;

  const QuestionTile({
    super.key,
    required this.question,
    required this.className,
    required this.subjectName,
  });

  @override
  State<QuestionTile> createState() => _QuestionTileState();
}

class _QuestionTileState extends State<QuestionTile> {
  //
  int _selectedOptionIndex = -1;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Class, Subject, Chapter, Topic Info
              Wrap(
                spacing: 8,
                runSpacing: 4,
                children: [
                  _buildInfoChip(
                    "${widget.className} - ${widget.subjectName}",
                    colorScheme,
                    context,
                  ),
                  _buildInfoChip(
                    replaceUnderscoreWithSpace(widget.question.chapter),
                    colorScheme,
                    context,
                  ),
                  if (widget.question.topic != null &&
                      widget.question.topic!.isNotEmpty)
                    _buildInfoChip(
                      replaceUnderscoreWithSpace(widget.question.topic),
                      colorScheme,
                      context,
                    ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colorScheme.outlineVariant),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Question Text
              Text(
                widget.question.questionText,
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: colorScheme.onSurface,
                ),
              ),
              const SizedBox(height: 16),
              // Options
              _buildOptions(widget.question, theme, colorScheme),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoChip(
    String text,
    ColorScheme colorScheme,

    BuildContext context,
  ) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: theme.textTheme.labelSmall?.copyWith(
          color: colorScheme.onPrimaryContainer,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildOptions(
    QuestionsResponse question,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Column(
      children: question.options.map((option) {
        int index = extractNumberAsInt(option.label);
        int answer = extractNumberAsInt(question.answer);
        final isAnswer = index == answer;
        final bool isSelected = _selectedOptionIndex == index;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedOptionIndex = index;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: colorScheme.outlineVariant, width: 1),
                color: isSelected ? Colors.grey.shade300 : colorScheme.surface,
              ),
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Text(
                    option.label,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurface,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(width: 2),
                  Expanded(
                    child: Text(
                      option.text,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  if (isSelected)
                    isAnswer
                        ? Icon(Icons.check, color: Colors.green, size: 20)
                        : Icon(Icons.close, color: Colors.red, size: 20),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
