import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_of_knowledge/screens/drawing_screen.dart';
import 'package:world_of_knowledge/screens/grammar_screen.dart';
import 'package:world_of_knowledge/screens/home_screen.dart';
import 'package:world_of_knowledge/screens/math_screen.dart';
import 'package:world_of_knowledge/screens/music_screen.dart';
import 'package:world_of_knowledge/screens/reading_screen.dart';
import 'package:world_of_knowledge/screens/setting_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.black38,
        ),
        textTheme: GoogleFonts.bebasNeueTextTheme(),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomeScreen(),
        '/math_screen': (context) => const MathScreen(),
        '/grammar_screen': (context) => const GrammarScreen(),
        '/reading_screen': (context) => const ReadingScreen(),
        '/drawing_screen': (context) => const DrawingScreen(),
        '/music_screen': (context) => const MusicScreen(),
        '/setting_screen': (context) => const SettingScreen(),
      },
      initialRoute: '/',
    );
  }
}
