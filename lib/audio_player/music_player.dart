import 'package:audioplayers/audioplayers.dart';

class MusicPlayer {

  static final AudioPlayer player = AudioPlayer();

  static void playMusic(String musicAsset) async {
    await player.setSource(AssetSource(musicAsset));
    await player.resume();
    print('Запуск $musicAsset');
  }

  static void pauseMusic() async {
    try {
      await player.pause();
    } catch (e) {}
  }

  static void stopMusic() async {
    try {
      await player.stop();
    } catch (e) {}
  }

  static void changeVolume(double volume) async {
    try {
      await player.setVolume(volume);
    } catch (e) {}
  }
}
