import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/core/network/endpoint.dart';
import 'package:rewise_neet/core/network/network_service.dart';
import 'package:rewise_neet/features/practice/data/dto/response/questions_response.dart';

final practiceApiProvider = Provider.autoDispose<PracticeApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return PracticeApi(dio);
});

class PracticeApi {
  final Dio _dio;

  PracticeApi(this._dio);

  Future<List<QuestionResponse>> getAllQuestions() async {
    try {
      final response = await _dio.get(Endpoint.getAllQuestions);

      if (response.statusCode == 200) {
        final data = response.data as List;
        return data
            .map((questionJson) => QuestionResponse.fromJson(questionJson))
            .toList();
      } else {
        throw Exception('Failed to load questions');
      }
    } catch (e) {
      throw Exception('Error fetching questions: $e');
    }
  }
}
