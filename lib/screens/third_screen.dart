import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:world_of_knowledge/data/provider/person_data_provider.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class ThirdScreen extends StatelessWidget {
  ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? sexProvider = context.read<PersonDataProvider>().sex;
    bool? sex;
    if (sexProvider == 'male') {
      sex = true;
    } else if (sexProvider == 'female') {
      sex = false;
    }
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
              _firstPersonButton(context, sex!),
              Spacer(),
              _seconPersonButton(context, sex),
              Spacer(),
              _thirdPersonButton(context, sex),
              Spacer(),
            ],
          ),
        ]),
        Positioned(
          top: 20,
          left: 5,
          child: ButtonWidget(
            onTap: () async {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              Assets.buttonsCancelButton,
              width: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
        ),
      ]),
    );
  }
}

Widget _firstPersonButton(
  BuildContext context,
  bool sex,
) {
  return ButtonWidget(
    onTap: () {
      context.read<PersonDataProvider>().personIndex = 0;
      Navigator.pushNamed(context, '/history_screen');
    },
    child: SvgPicture.asset(
      sex! ? Assets.person_man_0 : Assets.person_woman_0,
      width: sex!
          ? MediaQuery.of(context).size.width * 0.20
          : MediaQuery.of(context).size.width * 0.18,
    ),
  );
}

Widget _seconPersonButton(
  BuildContext context,
  bool sex,
) {
  return ButtonWidget(
    onTap: () {
      context.read<PersonDataProvider>().personIndex = 1;
      Navigator.pushNamed(context, '/history_screen');
    },
    child: SvgPicture.asset(
      sex! ? Assets.person_man_1 : Assets.person_woman_1,
      width: sex!
          ? MediaQuery.of(context).size.width * 0.19
          : MediaQuery.of(context).size.width * 0.21,
    ),
  );
}

Widget _thirdPersonButton(
  BuildContext context,
  bool sex,
) {
  return ButtonWidget(
    onTap: () {
      context.read<PersonDataProvider>().personIndex = 2;
      Navigator.pushNamed(context, '/history_screen');
    },
    child: SvgPicture.asset(
      sex! ? Assets.person_man_2 : Assets.person_woman_2,
      width: sex!
          ? MediaQuery.of(context).size.width * 0.22
          : MediaQuery.of(context).size.width * 0.21,
    ),
  );
}
