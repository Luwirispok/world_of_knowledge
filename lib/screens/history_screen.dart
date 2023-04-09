import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:world_of_knowledge/core/app_color.dart';
import 'package:world_of_knowledge/core/mark_down.dart';
import 'package:world_of_knowledge/data/provider/data_transfer_provider.dart';
import 'package:world_of_knowledge/data/provider/person_data_provider.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/models/story_model.dart';

import 'package:world_of_knowledge/widgets/button.dart';

class HistoryScreen extends StatelessWidget {
  String? sex;
  bool? _sex;

  HistoryScreen({required this.sex, super.key});

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
    if (sex == 'male') {
      _sex = true;
    } else if (sex == 'female') {
      _sex = false;
    }

    return Scaffold(
      body: Stack(children: [
        SizedBox.expand(
            child: SvgPicture.asset(
          Assets.second_sc,
          width: 60,
              fit: BoxFit.cover,
        )),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Container(
              height: 600,
              width: MediaQuery.of(context).size.width * 0.7,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                child: MarkdownText(
                    data: StoryModel(
                            index: 3,
                            name: 'История',
                            author: '',
                            imageCover: '',
                            text: _sex!
                                ? DataTransferProvider().history_for_boy
                                : DataTransferProvider().history_for_girl)
                        .text),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
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
        ),
        Positioned(
          top: 15,
          left: 15,
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
        Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Истоия игры',
                style: TextStyle(
                  fontSize: 30,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
