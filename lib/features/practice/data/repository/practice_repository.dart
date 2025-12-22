import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';

abstract interface class PracticeRepository {
  Future<List<QuestionResponse>> getQuestions();
}
