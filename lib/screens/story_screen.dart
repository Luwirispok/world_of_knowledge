import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markdown_viewer/markdown_viewer.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/quiz/models/story.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key, required this.storyModel}) : super(key: key);

  final StoryModel storyModel;
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
                  child: MarkdownText(data: storyModel.text),
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

class MarkdownText extends StatelessWidget {
  MarkdownText({super.key, required data, this.onTapLink}) {
    _data = data;
  }

  late final String? _data;
  final void Function(String? href, String? title)? onTapLink;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
      child: MarkdownViewer(
        _data ?? '',
        styleSheet: const MarkdownStyle(textStyle: TextStyle(fontSize: 16)),
        onTapLink: onTapLink,
      ),
    );
  }
}

// https://github.github.com/gfm/
// https://markdown-it.github.io/