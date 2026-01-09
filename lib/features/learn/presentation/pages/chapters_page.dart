import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/app/routes/route_name.dart';
import 'package:rewise_neet/app/routes/route_state_provider.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/presentation/widgets/chapter_tile.dart';

class ChaptersPage extends ConsumerWidget {
  const ChaptersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get subject from provider if not passed as parameter (e.g., back button case)
    final displaySubject = ref.watch(routeStateProvider).selectedSubject;

    // If still no subject, show error
    if (displaySubject == null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Chapters'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.go('/$subjectsRoute'),
          ),
        ),
        body: const Center(
          child: Text('Subject data not available. Please try again.'),
        ),
      );
    }

    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapters'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/$subjectsRoute'),
        ),
      ),
      body: displaySubject.chapters.isEmpty
          ? _buildEmptyState(context)
          : _buildChaptersList(colorScheme, displaySubject),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.book_outlined,
            size: 80,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          const Text(
            'No Chapters Available',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'No chapters found for this subject',
            style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }

  Widget _buildChaptersList(
    ColorScheme colorScheme,
    SubjectsResponse displaySubject,
  ) {
    return Container(
      color: colorScheme.surfaceContainerLowest,
      child: ListView.builder(
        itemCount: displaySubject.chapters.length,
        itemBuilder: (context, index) {
          final chapter = displaySubject.chapters[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ChapterTile(
              chapter: chapter,
              className: displaySubject.className,
              subjectName: displaySubject.subjectName,
            ),
          );
        },
      ),
    );
  }
}
