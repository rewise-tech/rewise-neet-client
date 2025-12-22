import 'package:multiple_result/multiple_result.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';

abstract interface class PracticeSercvice {
  Future<Result<List<QuestionResponse>, Failure>> getQuestions();
}
