import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rewise_neet/app/routes/route_name.dart';
import 'package:rewise_neet/features/learn/presentation/controller/learn_controller.dart';
import 'package:rewise_neet/features/learn/presentation/widgets/subject_tile.dart';

class SubjectsPage extends ConsumerStatefulWidget {
  const SubjectsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SubjectsPageState();
}

class _SubjectsPageState extends ConsumerState<SubjectsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(learnControllerProvider.notifier).getSubjects();
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
        title: const Text('Subjects'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/$learnRoute'),
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

    if (state.subjects.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.school,
              size: 80,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(height: 16),
            const Text(
              'No Subjects Available',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'No subjects found to display',
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
        itemCount: state.subjects.length,
        itemBuilder: (context, index) {
          final subject = state.subjects[index];
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SubjectTile(subject: subject),
          );
        },
      ),
    );
  }
}
