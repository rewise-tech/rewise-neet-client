import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/common/extension/string_hardcoded.dart';
import 'package:rewise_neet/common/mixin/dio_exception_mapper.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';
import 'package:rewise_neet/features/practice/data/repository/practice_repository.dart';
import 'package:rewise_neet/features/practice/data/source/remote/practice_api.dart';

final practiceRepositoryProvider = Provider.autoDispose<PracticeRepository>((
  ref,
) {
  final practiceApi = ref.watch(practiceApiProvider);
  return PracticeRepositoryImpl(practiceApi);
});

final class PracticeRepositoryImpl
    with DioExceptionMapper
    implements PracticeRepository {
  final PracticeApi _practiceApi;

  PracticeRepositoryImpl(this._practiceApi);

  @override
  Future<List<QuestionResponse>> getQuestions() async {
    try {
      return await _practiceApi.getAllQuestions();
    } on DioException catch (e, s) {
      throw mapDioExceptionToFailure(e, s);
    } catch (e, s) {
      throw Failure(
        message:
            "An unexpected error occurred. Please try again later".hardcoded,
        exception: e as Exception,
        stackTrace: s,
      );
    }
  }
}
