import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:world_of_knowledge/enums/planets.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildItemList(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        PlanetsEnum.values[index].onTapPlanet(context).call();
      },
      child: SvgPicture.asset(
        PlanetsEnum.values[index].imageAssetPlanet,
        width: 300,
      ),
    );
  }

  void onItemFocus(int int) {
    print("Planet: ${PlanetsEnum.values[int].name}");

    setState(() {
      indexPlanet = int;
    });
  }

  int indexPlanet = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Stack(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 600),
                  child: SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    key: UniqueKey(),
                    child: Image.asset(
                      PlanetsEnum.values[indexPlanet].backgroundAssetPlanet,
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
            HomeScreenButtonsWidget(
              planetsEnum: PlanetsEnum.values[indexPlanet],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreenButtonsWidget extends StatelessWidget {
  const HomeScreenButtonsWidget({Key? key, required this.planetsEnum}) : super(key: key);

  final PlanetsEnum planetsEnum;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonWidget(
              onTap: () {
                SystemNavigator.pop();
              },
              child: SvgPicture.asset(
                Assets.buttonsCancelButton,
                width: 60,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ButtonWidget(
              onTap: () {
                planetsEnum.onTapPlanet(context).call();
              },
              child: SvgPicture.asset(
                Assets.buttonsStartButton,
                width: size.width * 0.12,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: ButtonWidget(
              onTap: () {
                Navigator.pushNamed(context, '/setting_screen');
              },
              child: SvgPicture.asset(
                Assets.buttonsSettingButton,
                width: 60,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              planetsEnum.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
