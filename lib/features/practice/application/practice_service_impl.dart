import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/features/practice/application/practice_service.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';
import 'package:rewise_neet/features/practice/data/repository/practice_repository.dart';
import 'package:rewise_neet/features/practice/data/repository/practice_repository_impl.dart';

final practiceServiceProvider = Provider.autoDispose<PracticeSercvice>((ref) {
  final practiceRepository = ref.watch(practiceRepositoryProvider);
  return PracticeServiceImpl(practiceRepository);
});

final class PracticeServiceImpl implements PracticeSercvice {
  final PracticeRepository _practiceRepository;
  PracticeServiceImpl(this._practiceRepository);

  @override
  Future<Result<List<QuestionResponse>, Failure>> getQuestions() async {
    try {
      final response = await _practiceRepository.getQuestions();
      return Success(response);
    } on Failure catch (e) {
      return Error(e);
    } catch (e, s) {
      return Error(
        Failure(
          message: e.toString(),
          exception: e as Exception,
          stackTrace: s,
        ),
      );
    }
  }
}
