import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';

import 'state/route_state.dart';

final routeStateProvider = NotifierProvider<RouteStateNotifier, RouteState>(
  RouteStateNotifier.new,
);

class RouteStateNotifier extends Notifier<RouteState> {
  @override
  RouteState build() {
    return const RouteState();
  }

  void setSelectedSubject(SubjectsResponse subject) {
    state = state.copyWith(selectedSubject: subject);
  }

  void setSelectedChapter(Map<String, dynamic> chapter) {
    state = state.copyWith(selectedChapter: chapter);
  }
}
