import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:world_of_knowledge/data/provider/data_transfer_provider.dart';
import 'package:world_of_knowledge/data/provider/model.dart';
import 'package:world_of_knowledge/data/provider/person_data_provider.dart';
import 'package:world_of_knowledge/quiz/getQuestions/main_widget.dart';
import 'package:world_of_knowledge/screens/drawing_screen.dart';
import 'package:world_of_knowledge/screens/history_screen.dart';
import 'package:world_of_knowledge/screens/home_screen.dart';
import 'package:world_of_knowledge/screens/music_screen.dart';
import 'package:world_of_knowledge/screens/reading_screen.dart';
import 'package:world_of_knowledge/screens/setting_screen.dart';
import 'package:world_of_knowledge/screens/splash_screen.dart';
import 'package:world_of_knowledge/screens/story_screen.dart';
import 'package:world_of_knowledge/screens/third_screen.dart';
import 'package:world_of_knowledge/screens/welcome_screen.dart';
import 'package:world_of_knowledge/screens/who_are_u_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft],
  );
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

late final SharedPreferences sharedPreferences;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
////////////

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataModelProvider>(
            create: (_) => DataModelProvider()),
        ChangeNotifierProvider<PersonDataProvider>(
            create: (_) => PersonDataProvider()),
        ChangeNotifierProvider<DataTransferProvider>(
            create: (_) => DataTransferProvider()),
      ],
      child: MaterialApp(
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
          '/': (context) => SplashScreen(),
          '/welcome_screen': (context) => WelcomeScreen(),
          '/second_screen': (context) => WhoAreUScreen(),
          '/third_screen': (context) => ThirdScreen(),
          '/history_screen': (context) => HistoryScreen(),
          '/home_screen': (context) => const HomeScreen(),
          '/math_screen': (context) =>
              MainWidget(sharedPreferences: sharedPreferences),
          '/grammar_screen': (context) =>
              MainWidget(sharedPreferences: sharedPreferences),
          '/reading_screen': (context) => ReadingScreen(
                listStoryModel:
                    context.read<DataTransferProvider>().listStoryModel,
              ),
          // '/reading_screen': (context) => MainWidget(sharedPreferences: sharedPreferences),
          '/drawing_screen': (context) => const DrawingScreen(),
          '/music_screen': (context) => const MusicScreen(),
          '/setting_screen': (context) => const SettingScreen(),
        },
        initialRoute: '/',
      ),
    );
  }
}
