import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:world_of_knowledge/enums/planets.dart';

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.black38,
        ),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  Widget _buildItemList(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        PlanetsEnum.values[index].onTapPlanet.call();
      },
      child: SvgPicture.asset(
        PlanetsEnum.values[index].imageAssetPlanet,
        width: 300,
      ),
    );
  }

  void onItemFocus(int int) {
    print("Planet: $int");
    backIndex = int;
    setState(() {});
  }

  int backIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 600),
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                key: UniqueKey(),
                child: Image.asset(
                  PlanetsEnum.values[backIndex].backgroundAssetPlanet,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ScrollSnapList(
                  itemBuilder: _buildItemList,
                  itemCount: PlanetsEnum.values.length,
                  dynamicItemSize: true,
                  itemSize: 300,
                  onItemFocus: onItemFocus,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
