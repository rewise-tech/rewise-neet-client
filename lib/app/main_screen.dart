import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'routes/route_name.dart';

class MainScreen extends StatelessWidget {
  final Widget child;

  const MainScreen({super.key, required this.child});

  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).matchedLocation;
    if (location.startsWith('/$homeRoute')) return 0;
    if (location.startsWith('/$learnRoute')) return 1;
    if (location.startsWith('/$practiceRoute')) return 2;
    if (location.startsWith('/$progressRoute')) return 3;
    if (location.startsWith('/$profileRoute')) return 4;
    return 0;
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/$homeRoute');
        break;
      case 1:
        context.go('/$learnRoute');
        break;
      case 2:
        context.go('/$practiceRoute');
        break;
      case 3:
        context.go('/$progressRoute');
        break;
      case 4:
        context.go('/$profileRoute');
        break;
    }
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'Learn';
      case 2:
        return 'Practice';
      case 3:
        return 'Progress';
      case 4:
        return 'Profile';
      default:
        return 'App';
    }
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = _calculateSelectedIndex(context);

    return Scaffold(
      appBar: AppBar(title: Text(_getTitle(selectedIndex))),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) => _onItemTapped(context, index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Learn'),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Practice',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Progress',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
