import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

List<String> planetAssets = [
  'images/planets/1.svg',
  'images/planets/2.svg',
  'images/planets/3.svg',
  'images/planets/4.svg',
  'images/planets/5.svg',
  'images/planets/6.svg',
  'images/planets/7.svg',
  'images/planets/8.svg',
];

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  Widget _buildItemList(BuildContext context, int index) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.2,
      child: GestureDetector(
        onTap: () {
        },
        child: SvgPicture.asset(planetAssets[index], width: 300,),
      ),
    );
  }

  void funs(int int) {
    print("Hui: $int");
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: ScrollSnapList(
              itemBuilder: _buildItemList,
              itemCount: planetAssets.length,
              dynamicItemSize: true,
              itemSize: 300,
              onItemFocus: funs,
            ),
          ),
        ),
      ),
    );
  }
}
