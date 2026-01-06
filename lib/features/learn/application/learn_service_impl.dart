import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/features/learn/application/learn_service.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/data/repository/learn_repository.dart';
import 'package:rewise_neet/features/learn/data/repository/learn_repository_impl.dart';

final learnServiceProvider = Provider.autoDispose<LearnService>((ref) {
  final learnRepository = ref.watch(learnRepositoryProvider);
  return LearnServiceImpl(learnRepository);
});

final class LearnServiceImpl implements LearnService {
  final LearnRepository _learnRepository;
  LearnServiceImpl(this._learnRepository);

  @override
  Future<Result<List<SubjectsResponse>, Failure>> getSubjects() async {
    try {
      final response = await _learnRepository.getSubjects();
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
