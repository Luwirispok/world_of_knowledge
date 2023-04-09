import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:world_of_knowledge/generated/assets.dart';
import 'package:world_of_knowledge/widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
              child: SvgPicture.asset(
            Assets.first_sc,
            width: 60,
                fit: BoxFit.cover,
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: const Text(
                      'Добро пожаловать в игру  малыш',
                      style: TextStyle(
                        fontSize: 29,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                    onTap: () {
                      Navigator.pushNamed(context, '/second_screen');
                    },
                    child: SvgPicture.asset(
                      Assets.buttonsStartButton,
                      width: MediaQuery.of(context).size.width * 0.12,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Нажми на кнопку, чтобы продолжить',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
