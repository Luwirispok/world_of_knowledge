import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:world_of_knowledge/audio_player/music_player.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final PlanetsEnum _planetsEnum = PlanetsEnum.drawingPlanet;

  int volume = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox.expand(
                child: SvgPicture.asset(
              Assets.first_sc,
              width: 60,
              fit: BoxFit.cover,
            )),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonWidget(
                    child: SvgPicture.asset(
                      Assets.buttonsMusicOffButton,
                      width: 60,
                    ),
                    onTap: () {
                      volume -= volume == 0 ? 0 : 10;
                      MusicPlayer.changeVolume(volume / 100.0);
                      setState(() {

                      });
                    },
                  ),
                  const SizedBox(width: 20),
                  Text('${volume} %', style: const TextStyle(color: Colors.white, fontSize: 30),),
                  const SizedBox(width: 20),
                  ButtonWidget(
                    child: SvgPicture.asset(
                      Assets.buttonsMusicOnButton,
                      width: 60,
                    ),
                    onTap: () {
                      volume += volume == 100 ? 0 : 10;
                      MusicPlayer.changeVolume(volume / 100.0);
                      setState(() {

                      });
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ButtonWidget(
                  child: SvgPicture.asset(
                    Assets.buttonsCancelButton,
                    width: 60,
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
