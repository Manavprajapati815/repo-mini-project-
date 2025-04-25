import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Explorer',
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      theme: ThemeData.light(),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.grey[900],
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          foregroundColor: Colors.white,
        ),
        drawerTheme: const DrawerThemeData(
          backgroundColor: Colors.black,
        ),
      ),
      home: HomeScreen(
        isDark: isDark,
        onThemeToggle: () => setState(() => isDark = !isDark),
      ),
    );
  }
}
