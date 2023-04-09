import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class WhoAreUScreen extends StatelessWidget {
  const WhoAreUScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
            child: SvgPicture.asset(
          Assets.second_sc,
          width: 60,
        )),
        Column(children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Прежде чем отправиться в мир, выбери кто ты?',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Spacer(),
              ButtonWidget(
                onTap: () {
                  context.read<PersonDataProvider>().sex = 'male';
                  Navigator.pushNamed(
                    context,
                    '/third_screen',
                  );
                },
                child: SvgPicture.asset(
                  Assets.person_man_0,
                  width: MediaQuery.of(context).size.width * 0.20,
                ),
              ),
              Spacer(),
              ButtonWidget(
                onTap: () {
                  context.read<PersonDataProvider>().sex = 'female';
                  Navigator.pushNamed(
                    context,
                    '/third_screen',
                  );
                },
                child: SvgPicture.asset(
                  Assets.person_woman_0,
                  width: MediaQuery.of(context).size.width * 0.18,
                ),
              ),
              Spacer(),
            ],
          ),
        ]),
      ]),
    );
  }
}

class PersonDataProvider extends ChangeNotifier {
  String? sex;
  int? personIndex;
  bool? setSettings;
}
