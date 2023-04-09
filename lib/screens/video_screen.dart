import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class VideoScreen extends StatelessWidget {
  VideoScreen({
    Key? key,
  }) : super(key: key);

  //TODO: получать данные планеты через конструктор или провайдер
  final PlanetsEnum _planetsEnum = PlanetsEnum.videoPlanet;

  List<String> imageVideo = [
    'images/video/video_0.png',
    'images/video/video_1.png',
    'images/video/video_2.png',
    'images/video/video_3.png',
    'images/video/video_4.png',
    'images/video/video_5.png',
  ];
  List<String> urlVideo = [
    'https://youtu.be/l8AGJ3L6Dgw',
    'https://youtu.be/1PpDurCqRuU',
    'https://youtu.be/ovYk09AtwKY',
    'https://youtu.be/gI8KxABjh_0',
    'https://youtu.be/4OO848cz2G8',
    'https://youtu.be/ySzbgdTEjlA',
  ];
  List<String> nameVideo = [
    'Галилео. Как делают съедобную бумагу?',
    'Галилео. Почему апельсин состоит из долек?',
    'Галилео. Кто и зачем топит топлёное молоко?',
    'Тренер - Смешарики',
    'Психолог - Смешарики',
    'На память - Смешарики',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox.expand(
              child: Image.asset(
                _planetsEnum.backgroundAssetPlanet,
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: GridView.builder(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1.6,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemCount: urlVideo.length,
                itemBuilder: (BuildContext context, int index) {
                  return ScaleTap(
                    onPressed: () {
                      Uri url = Uri.parse(urlVideo[index]);
                      launchUrl(url);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  imageVideo[index],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Text(
                                nameVideo[index],
                                softWrap: true,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
            Positioned(
              bottom: 20,
              right: 10,
              child: SvgPicture.asset(
                _planetsEnum.imageAssetPlanet,
                width: 80,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
