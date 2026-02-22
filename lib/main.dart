import 'package:flutter/material.dart';
import 'package:matule2026/story_book.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StoryBook());
  }
}
