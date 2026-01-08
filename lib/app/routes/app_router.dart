import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
// import 'package:rewise_neet/features/auth/presentation/controllers/auth_controller.dart';
// import 'package:rewise_neet/features/auth/presentation/state/auth_state.dart';
import 'package:rewise_neet/features/auth/presentation/pages/login_page.dart';
import 'package:rewise_neet/features/home/presentation/pages/home_page.dart';
import 'package:rewise_neet/features/learn/presentation/pages/learn_page.dart';
import 'package:rewise_neet/features/learn/presentation/pages/subjects_page.dart';
import 'package:rewise_neet/features/learn/presentation/pages/chapters_page.dart';
import 'package:rewise_neet/features/learn/presentation/pages/questions_page.dart';
import 'package:rewise_neet/features/practice/presentation/pages/practice_page.dart';
import 'package:rewise_neet/features/progress/presentation/pages/progress_page.dart';
import 'package:rewise_neet/features/profile/presentation/pages/profile_page.dart';
import 'package:rewise_neet/features/profile/presentation/pages/my_account_page.dart';
import 'package:rewise_neet/features/learn/data/dto/response/subjects_response.dart';
import '../main_screen.dart';
import 'route_name.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  //
  // final authState = ref.watch(authControlProvider);

  return GoRouter(
    // initialLocation: '/$loginRoute',
    initialLocation: '/$homeRoute',
    redirect: (context, state) {
      // final isAuthenticated = authState.isAuthenticated;
      // final isAuthLoading = authState.status == AuthStatus.initial;
      // final isGoingToLogin = state.matchedLocation == '/$loginRoute';

      // // If loading, stay on current page
      // if (isAuthLoading) return null;

      // // If not authenticated and not going to login, redirect to login
      // if (!isAuthenticated && !isGoingToLogin) {
      //   return '/$loginRoute';
      // }

      // // If authenticated and going to login, redirect to home
      // if (isAuthenticated && isGoingToLogin) {
      //   return '/$homeRoute';
      // }

      return null;
    },
    routes: [
      // Login Route
      GoRoute(
        path: '/$loginRoute',
        name: loginRoute,
        builder: (context, state) => const LoginPage(),
      ),

      // My Account Route
      GoRoute(
        path: '/$myAccountRoute',
        name: myAccountRoute,
        builder: (context, state) => const MyAccountPage(),
      ),

      // Subjects Route
      GoRoute(
        path: '/$subjectsRoute',
        name: subjectsRoute,
        builder: (context, state) => const SubjectsPage(),
      ),

      // Chapters Route
      GoRoute(
        path: '/$chaptersRoute',
        name: chaptersRoute,
        builder: (context, state) {
          final subject = state.extra as SubjectsResponse;
          return ChaptersPage(subject: subject);
        },
      ),

      // Questions Route
      GoRoute(
        path: '/$questionsRoute',
        name: questionsRoute,
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          return QuestionsPage(
            chapter: extra['chapter'],
            className: extra['className'],
            subjectName: extra['subjectName'],
          );
        },
      ),

      // Main App Shell with Bottom Navigation
      ShellRoute(
        builder: (context, state, child) => MainScreen(child: child),
        routes: [
          // Home Route
          GoRoute(
            path: '/$homeRoute',
            name: homeRoute,
            builder: (context, state) => const HomePage(),
          ),

          // Learn Route
          GoRoute(
            path: '/$learnRoute',
            name: learnRoute,
            builder: (context, state) => const LearnPage(),
          ),

          // Practice Route
          GoRoute(
            path: '/$practiceRoute',
            name: practiceRoute,
            builder: (context, state) => const PracticePage(),
          ),

          // Progress Route
          GoRoute(
            path: '/$progressRoute',
            name: progressRoute,
            builder: (context, state) => const ProgressPage(),
          ),

          // Profile Route
          GoRoute(
            path: '/$profileRoute',
            name: profileRoute,
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('Page not found: ${state.matchedLocation}')),
    ),
  );
});
