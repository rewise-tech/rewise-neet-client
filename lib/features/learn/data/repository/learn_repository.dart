import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/data/dto/response/questions_response.dart';

abstract interface class LearnRepository {
  Future<List<SubjectsResponse>> getSubjects();
  Future<List<QuestionsResponse>> searchQuestions({
    String? year,
    String? source,
    String? subject,
    String? chapter,
  });
}
