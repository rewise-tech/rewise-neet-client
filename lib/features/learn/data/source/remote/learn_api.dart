import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/core/network/endpoint.dart';
import 'package:rewise_neet/core/network/network_service.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

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
}
