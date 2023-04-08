import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class ReadingScreen extends StatelessWidget {
  const ReadingScreen({Key? key}) : super(key: key);

  //TODO: получать данные планеты через конструктор или провайдер
  final PlanetsEnum _planetsEnum = PlanetsEnum.readingPlanet;

  //TODO: сделать модель для сказки, экран с самой сказкой и переход на вопросы (Мику будет нужен индекс сказки)
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
                  childAspectRatio: 2,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                ),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return ScaleTap(
                    onPressed: () {
                      Navigator.pushNamed(context, '/story_screen');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        //TODO: title модельки сказки
                        'Сказка',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
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
