import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:front_end/screens/home.dart';

import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(
  brightness: Brightness.light,
  seedColor: Colors.black,
  surface: Colors.white,
);

final theme = ThemeData().copyWith(
  scaffoldBackgroundColor: colorScheme.surface,
  colorScheme: colorScheme,
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.lato(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleMedium: GoogleFonts.lato(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    titleLarge: GoogleFonts.lato(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  ),
);


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ShelfMind",
      theme: theme,
      home: HomeScreen(),
     
    );
  }
}
