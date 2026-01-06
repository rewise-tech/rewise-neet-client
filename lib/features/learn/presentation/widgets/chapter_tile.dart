import 'package:flutter/material.dart';
import 'package:rewise_neet/common/utils/strings_utils.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

class ChapterTile extends StatelessWidget {
  final Chapter chapter;
  final String className;
  final String subjectName;

  const ChapterTile({
    super.key,
    required this.chapter,
    required this.className,
    required this.subjectName,
  });

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
          // Class Name
          Text(
            className,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          // Subject Name
          Text(
            subjectName,
            style: theme.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          // Chapter Name
          Text(
            replaceUnderscoreWithSpace(chapter.formattedName),
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          // Topics count
          Row(
            children: [
              Icon(
                Icons.topic_outlined,
                size: 16,
                color: colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 4),
              Text(
                '${chapter.topics.length} Topics',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
