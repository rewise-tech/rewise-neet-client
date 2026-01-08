import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/core/network/endpoint.dart';
import 'package:rewise_neet/core/network/network_service.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import 'package:rewise_neet/features/learn/data/dto/response/questions_response.dart';

final learnApiProvider = Provider.autoDispose<LearnApi>((ref) {
  final dio = ref.watch(networkServiceProvider);
  return LearnApi(dio);
});

class LearnApi {
  final Dio _dio;

  LearnApi(this._dio);

  Future<List<SubjectsResponse>> getAllSubjects() async {
    try {
      final response = await _dio.get(Endpoint.getAllSubjects);

      if (response.statusCode == 200) {
        final data = response.data as List;
        return data
            .map((subjectJson) => SubjectsResponse.fromJson(subjectJson))
            .toList();
      } else {
        throw Exception('Failed to load subjects');
      }
    } catch (e) {
      throw Exception('Error fetching subjects: $e');
    }
  }

  Future<List<QuestionsResponse>> searchQuestions({
    String? year,
    String? source,
    String? subject,
    String? chapter,
  }) async {
    try {
      final Map<String, dynamic> queryParams = {};
      if (year != null) queryParams['year'] = year;
      if (source != null) queryParams['source'] = source;
      if (subject != null) queryParams['subject'] = subject;
      if (chapter != null) queryParams['chapter'] = chapter;

      final response = await _dio.get(
        Endpoint.searchQuestions,
        queryParameters: queryParams,
      );

      if (response.statusCode == 200) {
        final data = response.data as List;
        return data
            .map((questionJson) => QuestionsResponse.fromJson(questionJson))
            .toList();
      } else {
        throw Exception('Failed to load questions');
      }
    } catch (e) {
      throw Exception('Error fetching questions: $e');
    }
  }
}
