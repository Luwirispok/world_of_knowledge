import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:world_of_knowledge/audio_player/music_player.dart';
import 'package:world_of_knowledge/core/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _chcekStatus();
    super.initState();
    MusicPlayer.playMusic('audio/music_1.mp3');
  }

  _chcekStatus() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool('success') != null) {
      await Future.delayed(Duration(seconds: 2));
      Navigator.of(context).pushNamed('/home_screen');
    } else {
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(context).pushNamed('/welcome_screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'images/testrocket.gif',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Text(
              'Загрузка....',
              style: TextStyle(color: AppColors.white, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
