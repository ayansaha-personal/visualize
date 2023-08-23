import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vizualize/firebase_options.dart';
import 'package:vizualize/notifiers/app_state.dart';
import 'package:vizualize/theme/app_data.dart';
import 'package:vizualize/views/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Firebase initialization for respective platforms with options from 'firebase_options.dart' file.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  /// App widget wrapped with ChangeNotifierProvider to provide app state changes like:
  ///  Theme Data (Dark Mode/Light Mode)
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (BuildContext context) => AppStateNotifier(),
      child: const Visualize(),
    ),
  );
}

class Visualize extends StatefulWidget {
  const Visualize({super.key});

  @override
  State<Visualize> createState() => _VisualizeState();
}

class _VisualizeState extends State<Visualize> {
  @override
  Widget build(BuildContext context) {
    /// MaterialApp widget wrapped with Consumer to listen app state changes from AppStateNotifier
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: 'Vizualize',
          debugShowCheckedModeBanner: false,
          // Light Mode Theme
          theme: AppTheme.lightTheme,
          // Dark Mode Theme
          darkTheme: AppTheme.darkTheme,
          // Setting the user defined theme here (Default: Light Mode)
          themeMode: appState.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          initialRoute: '/',
          // App view routing
          routes: {'/': (context) => const SplashView()},
        );
      },
    );
  }
}
