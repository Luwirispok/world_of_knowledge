import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:world_of_knowledge/core/mark_down.dart';
import 'package:world_of_knowledge/data/provider/data_transfer_provider.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/models/story_model.dart';

import 'package:world_of_knowledge/widgets/button.dart';

class StoryScreen extends StatelessWidget {
  StoryModel? storyMod;
  StoryScreen({
    required this.storyMod,
    Key? key,
  }) : super(key: key);

  get storyModel => storyMod;

  final PlanetsEnum _planetsEnum = PlanetsEnum.readingPlanet;

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
            // ----------
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.all(40),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SingleChildScrollView(
                  child: MarkdownText(data: storyModel!.text),
                ),
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
