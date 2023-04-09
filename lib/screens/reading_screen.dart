import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/models/story_model.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class ReadingScreen extends StatelessWidget {
  final List<StoryModel> listStoryModel;
  ReadingScreen({
    Key? key,
    required this.listStoryModel,
  }) : super(key: key);

  //TODO: получать данные планеты через конструктор или провайдер
  final PlanetsEnum _planetsEnum = PlanetsEnum.readingPlanet;
  List<StoryModel> get _listStoryModel => listStoryModel;

  @override
  Widget build(BuildContext context) {
    _listStoryModel;
    print(_listStoryModel);
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
                padding: const EdgeInsets.only(
                    top: 100, left: 20, right: 20, bottom: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemCount: _listStoryModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return ScaleTap(
                    onPressed: () {
                      Navigator.pushNamed(context, '/story_screen',
                          arguments: <String, StoryModel>{
                            'story': _listStoryModel[index]
                          });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.horizontal(
                                  left: Radius.circular(10)),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  _listStoryModel[index].imageCover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _listStoryModel[index].name,
                                    style: const TextStyle(fontSize: 20),
                                  ),
                                  Text(_listStoryModel[index].author),
                                ],
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
