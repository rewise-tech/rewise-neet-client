import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

abstract interface class LearnRepository {
  Future<List<SubjectsResponse>> getSubjects();
}
