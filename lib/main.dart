import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/game_provider.dart';
import 'providers/user_provider.dart';
import 'router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const SparkApp());
}

class SparkApp extends StatelessWidget {
  const SparkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GameProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp.router(
        title: 'Beat_the_Bot',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.dark(
            primary: const Color(0xFF7C3AED),    // purple
            secondary: const Color(0xFF10B981),  // green
            surface: const Color(0xFF1A1A2E),    // dark surface
          ),
          scaffoldBackgroundColor: const Color(0xFF0D0D0D),
          fontFamily: 'Roboto',
        ),
        routerConfig: appRouter,
      ),
    );
  }
}