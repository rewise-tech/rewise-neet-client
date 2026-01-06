import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/app/routes/route_name.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/presentation/widgets/chapter_tile.dart';

class ChaptersPage extends StatelessWidget {
  final SubjectsResponse subject;

  const ChaptersPage({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapters'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/$subjectsRoute'),
        ),
      ),
      body: subject.chapters.isEmpty
          ? _buildEmptyState(context)
          : _buildChaptersList(colorScheme),
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

  Widget _buildChaptersList(ColorScheme colorScheme) {
    return Container(
      color: colorScheme.surfaceContainerLowest,
      child: ListView.builder(
        itemCount: subject.chapters.length,
        itemBuilder: (context, index) {
          final chapter = subject.chapters[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: ChapterTile(
              chapter: chapter,
              className: subject.className,
              subjectName: subject.subjectName,
            ),
          );
        },
      ),
    );
  }
}
