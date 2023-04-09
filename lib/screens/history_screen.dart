import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:world_of_knowledge/core/app_color.dart';
import 'package:world_of_knowledge/data/provider/person_data_provider.dart';
import 'package:world_of_knowledge/generated/assets.dart';

import 'package:world_of_knowledge/widgets/button.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  void _setFirstSetting(BuildContext context) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final int? index = context.read<PersonDataProvider>().personIndex;
    if (context.read<PersonDataProvider>().sex == 'male') {
      prefs.setBool('sex', true);
    } else if (context.read<PersonDataProvider>().sex == 'female') {
      prefs.setBool('sex', false);
    }
    prefs.setInt('index', index!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
            child: SvgPicture.asset(
          Assets.second_sc,
          width: 60,
        )),
        Center(
            child: Container(
          width: MediaQuery.of(context).size.width * 0.78,
          decoration: BoxDecoration(
            color: AppColors.grey,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(child: Text('dsadsad')),
        )),
        Positioned(
          bottom: 0,
          right: 0,
          child: ButtonWidget(
            onTap: () async {
              _setFirstSetting(context);
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              prefs.setBool('success', true);
              Navigator.pushNamed(context, '/home_screen');
            },
            child: SvgPicture.asset(
              Assets.buttonsStartButton,
              width: MediaQuery.of(context).size.width * 0.10,
            ),
          ),
        )
      ]),
    );
  }
}
