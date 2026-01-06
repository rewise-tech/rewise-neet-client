import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/common/exception/failure.dart';
import 'package:rewise_neet/common/extension/string_hardcoded.dart';
import 'package:rewise_neet/common/mixin/dio_exception_mapper.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/data/repository/learn_repository.dart';
import 'package:rewise_neet/features/learn/data/source/remote/learn_api.dart';

final learnRepositoryProvider = Provider.autoDispose<LearnRepository>((ref) {
  final learnApi = ref.watch(learnApiProvider);
  return LearnRepositoryImpl(learnApi);
});

final class LearnRepositoryImpl
    with DioExceptionMapper
    implements LearnRepository {
  final LearnApi _learnApi;

  LearnRepositoryImpl(this._learnApi);

  @override
  Future<List<SubjectsResponse>> getSubjects() async {
    try {
      return await _learnApi.getAllSubjects();
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
