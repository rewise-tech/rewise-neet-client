import 'package:multiple_result/multiple_result.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

abstract interface class LearnService {
  Future<Result<List<SubjectsResponse>, Failure>> getSubjects();
}
