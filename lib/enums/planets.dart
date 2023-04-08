enum PlanetsEnum {
  planet1,
  planet2,
  planet3,
  planet4,
  planet5,
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
      case PlanetsEnum.planet1:
        return _planetAssets[0];
      case PlanetsEnum.planet2:
        return _planetAssets[1];
      case PlanetsEnum.planet3:
        return _planetAssets[2];
      case PlanetsEnum.planet4:
        return _planetAssets[3];
      case PlanetsEnum.planet5:
        return _planetAssets[4];
      default:
        throw Exception('Нам пизда!');
    }
  }

  String get backgroundAssetPlanet {
    switch (this) {
      case PlanetsEnum.planet1:
        return _backgroundAsset[0];
      case PlanetsEnum.planet2:
        return _backgroundAsset[1];
      case PlanetsEnum.planet3:
        return _backgroundAsset[2];
      case PlanetsEnum.planet4:
        return _backgroundAsset[3];
      case PlanetsEnum.planet5:
        return _backgroundAsset[4];
      default:
        throw Exception('Нам пизда!');
    }
  }

  Function get onTapPlanet {
    switch (this) {
      case PlanetsEnum.planet1:
        return () {};
      case PlanetsEnum.planet2:
        return () {};
      case PlanetsEnum.planet3:
        return () {};
      case PlanetsEnum.planet4:
        return () {};
      case PlanetsEnum.planet5:
        return () {};
      default:
        throw Exception('Нам пизда!');
    }
  }
}

