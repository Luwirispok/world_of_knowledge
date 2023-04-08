import 'package:flutter/material.dart';

enum PlanetsEnum {
  mathPlanet,
  grammarPlanet,
  readingPlanet,
  musicPlanet,
  drawingPlanet,
}

List<String> _planetAssets = [
  'images/planets/1.svg',
  'images/planets/2.svg',
  'images/planets/3.svg',
  'images/planets/4.svg',
  'images/planets/5.svg',
];

List<String> _backgroundAsset = [
  'images/background/cosmos_1.png',
  'images/background/cosmos_2.png',
  'images/background/cosmos_3.png',
  'images/background/cosmos_4.png',
  'images/background/cosmos_5.png',
];
extension PlanetEnumExtension on PlanetsEnum {
  String get imageAssetPlanet {
    switch (this) {
      case PlanetsEnum.mathPlanet:
        return _planetAssets[0];
      case PlanetsEnum.grammarPlanet:
        return _planetAssets[1];
      case PlanetsEnum.readingPlanet:
        return _planetAssets[2];
      case PlanetsEnum.musicPlanet:
        return _planetAssets[3];
      case PlanetsEnum.drawingPlanet:
        return _planetAssets[4];
      default:
        throw Exception('Нам пизда!');
    }
  }

  String get name {
    switch (this) {
      case PlanetsEnum.mathPlanet:
        return 'Математика';
      case PlanetsEnum.grammarPlanet:
        return 'Грамматика';
      case PlanetsEnum.readingPlanet:
        return 'Чтение';
      case PlanetsEnum.musicPlanet:
        return 'Музыка';
      case PlanetsEnum.drawingPlanet:
        return 'Рисование';
      default:
        throw Exception('Нам пизда!');
    }
  }

  String get backgroundAssetPlanet {
    switch (this) {
      case PlanetsEnum.mathPlanet:
        return _backgroundAsset[0];
      case PlanetsEnum.grammarPlanet:
        return _backgroundAsset[1];
      case PlanetsEnum.readingPlanet:
        return _backgroundAsset[2];
      case PlanetsEnum.musicPlanet:
        return _backgroundAsset[3];
      case PlanetsEnum.drawingPlanet:
        return _backgroundAsset[4];
      default:
        throw Exception('Нам пизда!');
    }
  }

  VoidCallback onTapPlanet(BuildContext context) {
    switch (this) {
      case PlanetsEnum.mathPlanet:
        return () {
          Navigator.pushNamed(context, '/math_screen');
        };
      case PlanetsEnum.grammarPlanet:
        return () {
          Navigator.pushNamed(context, '/grammar_screen');
        };
      case PlanetsEnum.readingPlanet:
        return () {
          Navigator.pushNamed(context, '/reading_screen');
        };
      // case PlanetsEnum.musicPlanet:
      //   return () {
      //     Navigator.pushNamed(context, '/music_screen');
      //   };
      // case PlanetsEnum.drawingPlanet:
      //   return () {
      //     Navigator.pushNamed(context, '/drawing_screen');
      //   };
      default:
        _inTheWorks(context);
        return () {};
    }
  }
}

void _inTheWorks(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        backgroundColor: Colors.white.withOpacity(0.8),
        title: const Text('Упс...'),
        content: const Text('Раздел находится в разработке'),
        actions: <Widget>[
          TextButton(
            child: const Text('Хорошо', style: TextStyle(fontSize: 20),),
            onPressed: () {
              Navigator.of(dialogContext).pop(); // Dismiss alert dialog
            },
          ),
        ],
      );
    },
  );
}
